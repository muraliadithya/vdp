from pytorch_lightning.core import datamodule
import torch
import pytorch_lightning as pl
from torch._C import import_ir_module
from torch.utils.data import DataLoader
from torch.nn import functional as F
import common
from pretrain_puzzles import VAE
import os, cv2, pickle
from pytorch_lightning.callbacks import LearningRateMonitor
from pytorch_lightning.loggers import CSVLogger
from pytorch_lightning import LightningModule, Trainer, seed_everything
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

pz_pth = "data/clevr-cleaned-variants/"

LATENT_DIM = 512
LR         = 3e-4

############### CONSTANTS END ###############

class PrototypeVAE(pl.LightningModule):
    def __init__(self, vae_model):
        super().__init__()
        self.dim = 512
        self.pt_net = vae_model
        # for param in self.pt_net.parameters():
        #     param.requires_grad = False
        self.net = torch.nn.Sequential(torch.nn.Linear(512, self.dim), torch.nn.ReLU(), torch.nn.Linear(self.dim, self.dim))
        # self.save_hyperparameters()

    def dist(self, diff, axis=1):
        '''L2 norm'''
        return torch.norm(diff, p=2, dim=axis)

    def forward_naive(self, batch):
        x, y = batch
        y = y.squeeze(0)
        candidate_mask   = (y == 0) | (y == 1) | (y == 2)
        target_mask      = (y[candidate_mask] == 0)
        embeddings       = self.forward(x)
        candidates       = embeddings[candidate_mask]
        pos              = torch.norm(embeddings[~candidate_mask], dim=0)
        candidate_scores = self.dist(candidates - pos)
        chosen_candidate = torch.argmax(candidate_scores)
        return chosen_candidate
    
    def forward(self, x):
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
        bs, ncandidates = target_mask.shape
        candidates = embeddings[candidate_mask].view(bs, ncandidates, -1)
        pos        = torch.norm(embeddings[~candidate_mask].view(bs, ncandidates, -1), dim=1)
        for b in range(bs):
            candidates[b] = candidates[b] - pos[b]
        candidate_scores =  self.dist(candidates, axis=2)
        return torch.argmax(candidate_scores, dim=-1) == torch.argmax(target_mask.long(), dim=-1)

    def training_step(self, train_batch, batch_idx):
        x, y = train_batch
        y = y.squeeze(0)
        candidates = (y == 0) | (y == 1) | (y == 2)
        target     = (y == 0)
        embeddings = self.forward(x.squeeze(0))
        loss = self.training_loss(embeddings, target, target ^ candidates, ~candidates)
        self.log('train_loss', loss, prog_bar=True, on_step=True, on_epoch=False)
        # logs = {'loss' : loss}
        # self.log_dict({f"train_{k}": v for k, v in logs.items()}, on_step=True, on_epoch=False)
        return loss

    def validation_step(self, val_batch, batch_idx):
        x, y = val_batch
        bs, n_imgs, *args = x.shape
        candidates = (y == 0) | (y == 1) | (y == 2)
        target     = (y[candidates] == 0).view(bs, -1)
        embeddings = self.forward(x.view(bs*n_imgs, *args)).view(bs, n_imgs, -1)
        loss = self.eval_loss(embeddings, target, candidates)
        # logs = {'loss' : loss}
        # self.log_dict({f"accuracy": v for k, v in logs.items()}, prog_bar=True)
        self.log('accuracy', loss.float().mean().item(), prog_bar=True, on_step=True, on_epoch=True)
        return loss

    def configure_optimizers(self):
        optimizer = torch.optim.Adam(self.parameters(), lr=LR)
        lrs = {
            'scheduler': torch.optim.lr_scheduler.ReduceLROnPlateau(optimizer, patience=2, threshold=0.01),
            'monitor' : 'accuracy',
        }
        return {"optimizer": optimizer, "lr_scheduler": lrs}




class VDPDataModule(pl.LightningDataModule):
    def setup(self, stage):
        self.allset = common.VDPImage(pz_pth=pz_pth, to_run=to_run)
        training_idxs = list(itertools.chain(*[list(range(l, h + 1)) for l, h in map(lambda x : common.pz_partition[x], common.proto_train_on)]))
        testing_idxs  = list(itertools.chain(*[list(range(l, h + 1)) for l, h in map(lambda x : common.pz_partition[x], common.proto_test_on_small)]))
        self.train_set = torch.utils.data.Subset(self.allset, training_idxs)
        self.test_set  = torch.utils.data.Subset(self.allset, testing_idxs)

    def train_dataloader(self):
        # return DataLoader(self.train_set, batch_size=1, num_workers=0)
        return DataLoader(self.train_set, batch_size=1, num_workers=4, pin_memory=True, shuffle=True)

    def val_dataloader(self):
        # return DataLoader(self.test_set, batch_size=1, num_workers=0)
        return DataLoader(self.test_set, batch_size=5, num_workers=4, pin_memory=True)



if __name__ == "__main__":
    seed_everything(0, workers=True)
    data_module = VDPDataModule()
    height = 320
    model_str = f"puzzle-prototype-{height}-net"
    model_vae = VAE(height)
    model_vae = model_vae.load_from_checkpoint(f"data/prototype/puzzle-pretrained-{height}-vae-final.ckpt", strict=False, input_height=height)
    model = PrototypeVAE(vae_model=model_vae)
    checkpoint_callback = pl.callbacks.ModelCheckpoint(
            monitor="accuracy",
            dirpath="data/prototype/",
            filename= model_str + "-{epoch:02d}-{accuracy:.2f}",
            save_top_k=2,
            mode="max",)
    lr_monitor = LearningRateMonitor(logging_interval='step')
    csv_logger = CSVLogger(f"lightning_logs/{model_str}", )

    trainer = pl.Trainer(
        gpus=1,
        # check_val_every_n_epoch=5,
        logger=csv_logger,
        callbacks=[checkpoint_callback, lr_monitor],
        max_epochs=50)

    trainer.fit(model, data_module)
    trainer.save_checkpoint(f"data/prototype/{model_str}-final.ckpt")
    print("Saved ckpt!")

    pt_model = model.load_from_checkpoint(f"data/prototype/{model_str}-final.ckpt", vae_model=model_vae)
    data_module.setup(None)
    trainer.validate(pt_model, val_dataloaders=data_module.val_dataloader())
