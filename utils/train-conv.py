from pytorch_lightning.core import datamodule
import torch
import pytorch_lightning as pl
from torch._C import import_ir_module
from torch.utils.data import DataLoader
from torch.nn import functional as F
from train_vae import *
import os, cv2, pickle
from pytorch_lightning.callbacks import LearningRateMonitor
from encoders import MLPEncoder
import itertools
############### CONSTANTS START ###############
to_run = [
    "agreement",
    "alternate-color",
    "alternation",
    "aphaeresis",
    "apocope",
    "assimilation",
    "breaking",
    "circle-at-ends",
    "threepack",
    "train",
    "partition",
    "spy",
    "shield",
    "devoicing",
    "meeussen",
    # "neutralization",
    # "cones*",
]

pz_partition = {
                'agreement'         : [0, 49],          # 50
                'alternate-color'   : [50, 99],         # 50
                'alternation'       : [100, 299],       # 300
                'aphaeresis'        : [300, 349],       # 50
                'apocope'           : [350, 499],       # 150
                'assimilation'      : [500, 699],       # 200
                'breaking'          : [700, 799],       # 100
                'circle-at-ends'    : [800, 899],       # 100
                'devoicing'         : [900, 999],       # 100
                'meeussen'          : [1000, 1049],     # 50
                'partition'         : [1050, 1099],     # 50
                'shield'            : [1100, 1299],     # 100
                'spy'               : [1300, 1449],     # 150
                'threepack'         : [1450, 1549],     # 100
                'train'             : [1550, 1649]      # 100
            }
train_on = [
    'assimilation',
    'apocope',
    'alternation'
]

test_on = [
    "agreement",
    "alternate-color",
    # "alternation",
    "aphaeresis",
    # "apocope",
    # "assimilation",
    "breaking",
    "circle-at-ends",
    "threepack",
    "train",
    "partition",
    "spy",
    "shield",
    "devoicing",
    "meeussen",
]

pz_pth = "data/clevr-variants/"


LATENT_DIM = 1024
LR         = 3e-3

############### CONSTANTS END ###############

class PrototypeVAE(pl.LightningModule):

    def __init__(self, pretrained_vae):
        super().__init__()
        self.dim = LATENT_DIM
        self.pt_net = pretrained_vae
        for param in self.pt_net.parameters():
            param.requires_grad = False

        # self.net = MLPEncoder(dict(input_dim=LATENT_DIM, hidden_dim=MLP_DIM, output_dim=LATENT_DIM))
        self.net = torch.nn.Sequential(torch.nn.Linear(512, self.dim), torch.nn.ReLU(), torch.nn.Linear(self.dim, 512))
        # self.save_hyperparameters()


    def dist(self, diff, axis=1):
        '''L2 norm'''
        return torch.norm(diff, p=2, dim=axis)

    def forward_naive(self, x, candidate_idx):
        x = x.squeeze(0).view(6, -1)
        img_embedding = self.pt_net(x)
        embeddings    = self.net(img_embedding)
        query         = embeddings[candidate_idx]    # (3, 512)
        support       = embeddings[~candidate_idx]   # (3, 512)
        prototype     = torch.norm(support, dim=0)
        return F.softmax(self.dist(query - prototype), dim=0)

    def forward(self, x):
        x = x.squeeze(0)
        img_embedding = self.pt_net.encoder(x)
        embeddings = self.net(img_embedding)
        return embeddings

    def training_loss(self, embeddings, target_mask, neg_mask, pos_mask):
        query = embeddings[target_mask]                    # (512)
        neg   = embeddings[neg_mask]                       # (2, 512)
        pos   = torch.norm(embeddings[pos_mask], dim=0)    # (512)
        
        q_neg = self.dist(neg - query)
        q_pos = self.dist(pos - query).squeeze(0)
        
        # score = -1 * (torch.log( torch.exp(q_pos) / (torch.exp(q_neg).sum() + torch.exp(q_pos)) ))
        score = (q_pos + torch.log( torch.sum(torch.exp(-1 * q_neg)) +  torch.exp(-1 * q_pos) )) / 2
        return score
   
    def eval_loss(self, embeddings, target_mask, candidate_mask):
        candidates = embeddings[candidate_mask]
        pos        = torch.norm(embeddings[~candidate_mask], dim=0)
        candidate_scores =  self.dist(candidates - pos)
        return torch.argmax(candidate_scores) == torch.argmax(target_mask.long())

    def training_step(self, train_batch, batch_idx):
        x, y = train_batch
        y = y.squeeze(0)
        candidates = (y == 0) | (y == 1) | (y == 2)
        target     = (y == 0)
        embeddings = self.forward(x)
        loss = self.training_loss(embeddings, target, target ^ candidates, ~candidates)
        self.log('train_loss', loss, prog_bar=True)
        return loss

    def validation_step(self, val_batch, batch_idx):
        x, y = val_batch
        y = y.squeeze(0)
        candidates = (y == 0) | (y == 1) | (y == 2)
        target     = (y[candidates] == 0)
        embeddings = self.forward(x)
        loss = self.eval_loss(embeddings, target, candidates)
        self.log('accuracy', loss, prog_bar=True)

    def configure_optimizers(self):
        optimizer = torch.optim.Adam(self.parameters(), lr=LR)
        lrs = {
        'scheduler': torch.optim.lr_scheduler.ReduceLROnPlateau(optimizer, patience=5, threshold=0.01),
        'monitor' : 'train_loss',
    }
        return {"optimizer": optimizer, "lr_scheduler": lrs}



class VDPImage(torch.utils.data.Dataset):
    def __init__(self, pz_pth, puzzles):
        self.all_imgs = list()
        self.all_swaps = list()
        for (absdir, folders, files) in os.walk(pz_pth, followlinks=False):
            if absdir == pz_pth:
                puzzles = [os.path.join(pz_pth, p) for p in folders]
            if absdir in puzzles:
                puzzle_name = os.path.basename(absdir)
                if ("*" in puzzle_name) or (puzzle_name not in to_run):
                    continue
                for v_dir in glob(os.path.join(absdir, "*")):
                    if ".pkl" in v_dir or '.json' in v_dir:
                        continue
                    v_name = os.path.basename(v_dir)
                    images = sorted(glob(os.path.join(v_dir, f"CLEVR_{puzzle_name}-{v_name}_*.png")))
                    if "swap" in v_dir:
                        self.all_swaps.append((images, torch.Tensor([0, 1, 2, 3, 4, 5]), v_dir))
                        continue
                    self.all_imgs.append((images, torch.Tensor([0, 1, 2, 3, 4, 5]), v_dir))
                    # puzzle_name, variant_number = os.path.basename(absdir).split("-fovariant-")
                    # if ("*" in puzzle_name) or (puzzle_name not in to_run):
                    #     continue
                    # pth = os.path.join(absdir, "filter-1.pkl")
                    # self.all_pths.append(pth)
        
        self.all_imgs.extend(self.all_swaps)

        self.all_imgs = list(sorted(self.all_imgs, key=lambda x: x[2]))

        transform_list = [transforms.ToPILImage(),
                        transforms.Resize((320, 320)),
                        transforms.ToTensor(),
                        transforms.Normalize(mean = [0.485, 0.456, 0.406], std = [0.229, 0.224, 0.225])]
        self.transform = transforms.Compose(transform_list)


    def __len__(self):
        return len(self.all_imgs)

    def __getitem__(self, pz_idx):
        imgs, label, v_dir = self.all_imgs[pz_idx]
        assert len(imgs),  f"{imgs}"
        img_procd = torch.stack([self.transform(cv2.imread(img)) for img in imgs])
        return img_procd, label


class VDPDataModule(pl.LightningDataModule):
    def setup(self, stage):
        self.allset = VDPImage(pz_pth, to_run)
        training_idxs = list(itertools.chain(*[list(range(l, h + 1)) for l, h in map(lambda x : pz_partition[x], train_on)]))
        testing_idxs  = list(itertools.chain(*[list(range(l, h + 1)) for l, h in map(lambda x : pz_partition[x], test_on)]))

        self.train_set = torch.utils.data.Subset(self.allset, training_idxs)
        # self.test_set  = torch.utils.data.Subset(self.allset, list(range(300, 325)))
        # self.test_set  = torch.utils.data.Subset(self.allset, list(range(325, 350)))
        self.test_set  = torch.utils.data.Subset(self.allset, testing_idxs)

    def train_dataloader(self):
        return DataLoader(self.train_set, batch_size=1, num_workers=4, pin_memory=True)

    def val_dataloader(self):
        return DataLoader(self.test_set, batch_size=1, num_workers=4, pin_memory=True)



if __name__ == "__main__":
    seed_everything(0, workers=True)
    data_module = VDPDataModule()
    height = 320
    model = VAE(input_height=height)
    model_str = f"prototype-{height}-net"

    model_vae = VAE(height)
    model_vae = model_vae.load_from_checkpoint(f"data/prototype/pretrained-{height}-vae-final.ckpt", strict=False, input_height=height)
    model = PrototypeVAE(model_vae)
    
    checkpoint_callback = pl.callbacks.ModelCheckpoint(
            monitor="train_loss",
            dirpath="data/prototype/",
            filename= model_str + "-{epoch:02d}-{accuracy:.2f}",
            save_top_k=1,
            mode="max",)
    lr_monitor = LearningRateMonitor(logging_interval='step')
    trainer = pl.Trainer(
        gpus=1,
        check_val_every_n_epoch=5,
        callbacks=[checkpoint_callback, lr_monitor],
        max_epochs=50)

    trainer.fit(model, data_module)
    trainer.save_checkpoint(f"data/prototype/{model_str}-final.ckpt")
    print("Saved ckpt!")

    pt_model = model.load_from_checkpoint(f"data/prototype/{model_str}-final.ckpt", pretrained_vae=model_vae)
    data_module.setup(None)
    trainer.validate(pt_model, val_dataloaders=data_module.val_dataloader())
