from pytorch_lightning.core import datamodule
import torch
import pytorch_lightning as pl
from torch._C import import_ir_module
from torch.utils.data import DataLoader
from torch.nn import functional as F
import os, cv2
from pytorch_lightning.callbacks import LearningRateMonitor
from pl_bolts.models.autoencoders import VAE
from pytorch_lightning import seed_everything
import torchvision.transforms as transforms
import common, random
# pl_bolts.models.autoencoders.VAE
############### CONSTANTS START ###############

pz_pth = "data/natscene-puzzles/"


############### CONSTANTS END ###############

class LightningCOCOConvClassifier(pl.LightningModule):
    def __init__(self, vae_encoder):
        super().__init__()
        self.dim = 512
        self.pt_net = vae_encoder
        for param in self.pt_net.parameters():
            param.requires_grad = False

        self.net = torch.nn.Sequential(torch.nn.Linear(512, self.dim), torch.nn.ReLU(), torch.nn.Linear(self.dim, self.dim))
        # self.save_hyperparameters()

    def dist(self, diff, axis=1):
        '''L2 norm'''
        return torch.norm(diff, p=2, dim=axis)

    def forward(self, x):
        x = x.squeeze(0)
        img_embedding = self.pt_net(x)
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
        self.log('val_loss', loss, prog_bar=True)

    def configure_optimizers(self):
        optimizer = torch.optim.SGD(self.parameters(), lr=1e-3)
        lrs = {
        'scheduler': torch.optim.lr_scheduler.ReduceLROnPlateau(optimizer, patience=5, threshold=0.001),
        'monitor' : 'train_loss',
    }
        return {"optimizer": optimizer, "lr_scheduler": lrs}


# class CLEVRConv(torch.utils.data.Dataset):
#     def __init__(self, pz_pth, puzzles):
#         self.all_pths = list()
#         for (absdir, folders, files) in os.walk(pz_pth, followlinks=False):
#             if absdir == pz_pth:
#                 puzzles = [os.path.join(pz_pth, p) for p in folders]
#             if absdir in puzzles:
#                 puzzle_name, variant_number = os.path.basename(absdir).split("-fovariant-")
#                 if ("*" in puzzle_name) or (puzzle_name not in to_run):
#                     continue
#                 pth = os.path.join(absdir, "filter-1.pkl")
#                 self.all_pths.append(pth)
    
#     def __len__(self):
#         return len(self.all_pths)

#     def __getitem__(self, idx):
#         puzzle_pth = self.all_pths[idx]
#         inp = torch.load(puzzle_pth)
#         print(inp.shape)
#         input()
#         shuffle = torch.randperm(inp.shape[0])
#         inp = inp[shuffle]
#         return inp, shuffle



class CLEVRImage(torch.utils.data.Dataset):
    def __init__(self, pz_pth):
        self.all_imgs = list()
        self.all_swaps = list()
        for (absdir, folders, files) in os.walk(pz_pth, followlinks=False):
            if 'config' in absdir:
                for f in filter(lambda x: 'json' in x, files):
                    pth = os.path.join(absdir, f)
                    d = common.read_json(pth)
                    imgs = (d['test'] + d['train'])
                    cleaned_imgs = list(map(lambda x : os.path.join(pz_pth, 'images', os.path.basename(x)), imgs))
                    if not all(map(os.path.exists, cleaned_imgs)):
                        continue
                    self.all_imgs.append((cleaned_imgs, torch.Tensor(list(range(len(cleaned_imgs)))), pth))
        
        random.shuffle(self.all_imgs)
        split = int(len(self.all_imgs) * 0.75)
        
        with open("/home/ubuntu/vdp-tool-chain-repo/data/full-natscene-experiments/train.txt", 'w') as fp:
            print(self.all_imgs[:split] , file=fp)

        with open("/home/ubuntu/vdp-tool-chain-repo/data/full-natscene-experiments/test.txt", 'w') as fp:
            print(self.all_imgs[split:] , file=fp)


        transform_list = [transforms.ToPILImage(),
                        transforms.Resize((320, 320)),
                        transforms.ToTensor(),
                        transforms.Normalize(mean = [0.485, 0.456, 0.406], std = [0.229, 0.224, 0.225])]
        self.transform = transforms.Compose(transform_list)


    def __len__(self):
        return len(self.all_imgs)

    def __getitem__(self, pz_idx):
        imgs, label, v_dir = self.all_imgs[pz_idx]
        # print(pz_idx)
        # print(imgs)
        # print(label)
        # print(v_dir)
        # input()

        assert len(imgs),  f"{imgs}"
        img_procd = torch.stack([self.transform(cv2.imread(img)) for img in imgs])
        return img_procd, label


class ConvDataModule(pl.LightningDataModule):
    def setup(self, stage):
        self.allset = CLEVRImage(pz_pth)
        split = int((len(self.allset)) * 0.75)
        self.train_set = torch.utils.data.Subset(self.allset, list(range(0, split)))
        self.test_set  = torch.utils.data.Subset(self.allset, list(range(split, len(self.allset))))

    def train_dataloader(self):
        return DataLoader(self.train_set, batch_size=1, num_workers=4, pin_memory=True)

    def val_dataloader(self):
        return DataLoader(self.test_set, batch_size=1, num_workers=1, pin_memory=True)



if __name__ == "__main__":
    train = True
    validate = True
    seed_everything(0, workers=True)
    data_module = ConvDataModule()
    height = 320
    model_vae = VAE(input_height=height, pretrained='imagenet')
    encoder = model_vae.encoder
    encoder.eval()
    model = LightningCOCOConvClassifier(encoder)
    if not train:
        cleaner = lambda d: {k.replace("net.", "") :v for k,v in d.items() if '_net' not in k}
        model.net.load_state_dict(cleaner(torch.load("/home/ubuntu/vdp-tool-chain-repo/data/full-natscene-experiments/after-train.ckpt")['state_dict']))
    model_str = f"full-model-{model.dim}"
    checkpoint_callback = pl.callbacks.ModelCheckpoint(
            monitor="train_loss",
            dirpath="/home/ubuntu/vdp-tool-chain-repo/data/full-natscene-experiments/",
            filename= model_str + "-{epoch:02d}-{val_loss:.2f}",
            save_top_k=1,
            mode="min",)
    lr_monitor = LearningRateMonitor(logging_interval='step')
    trainer = pl.Trainer(
        gpus=1,
        callbacks=[checkpoint_callback, lr_monitor],
        max_epochs=100)
    if train:
        trainer.fit(model, data_module)
        trainer.save_checkpoint("/home/ubuntu/vdp-tool-chain-repo/data/full-natscene-experiments/after-train.ckpt")
        print("Saved ckpt!")

    if validate:
        data_module.setup(None)
        trainer.validate(model, val_dataloaders=data_module.val_dataloader())