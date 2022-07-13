import os, random
import torch
import numpy as np
from torch import nn
import torch.nn.functional as F
from torch.utils.data import DataLoader, dataloader, random_split
from torchvision import transforms
from torch.optim.lr_scheduler import ReduceLROnPlateau
import pytorch_lightning as pl
from pytorch_lightning.metrics.functional import accuracy
from pytorch_lightning.callbacks import ModelCheckpoint
from nn_baseline.datasets import IRDataset, seed_worker
from nn_baseline.options import get_options

AVAIL_GPUS = min(1, torch.cuda.device_count())

class BaselineClassifier(pl.LightningModule):
    def __init__(self, dims):
        super().__init__()
        dim_x, dim_y = dims
        inner_dim = 32
        self.model = nn.Sequential(
            nn.Flatten(),
            nn.Linear(dim_x * dim_y, inner_dim),
            nn.ReLU(),
            nn.Linear(inner_dim, 6))
        

    def forward(self, x):
        x = self.model(x)
        return F.log_softmax(x, dim=1)

    def training_step(self, batch, batch_idx):
        x, y = batch['data'], batch['target']
        logits = self(x)
        loss = F.nll_loss(logits, y)
        self.log('train_loss', loss, prog_bar=True)
        return loss

    def validation_step(self, batch, batch_idx):
        x, y = batch['data'], batch['target']
        logits = self(x)
        loss = F.nll_loss(logits, y)
        preds = torch.argmax(logits, dim=1)
        acc = accuracy(preds, y)
        self.log('val_loss', loss, prog_bar=True)
        self.log('val_acc', acc, prog_bar=True)
        return loss

    def test_step(self, batch, batch_idx):
        # Here we just reuse the validation_step for testing
        return self.validation_step(batch, batch_idx)

    def configure_optimizers(self):
        optimizer = torch.optim.SGD(self.parameters(), nesterov=True, momentum=0.9, lr=3e-3)
        return {
        'optimizer': optimizer,
        'lr_scheduler': {
            'scheduler': ReduceLROnPlateau(optimizer, factor=0.1, patience=3),
            'monitor': 'val_loss',
        }
    }

    
def main():
    opts = get_options("train")
    dataset = IRDataset(opts.ir_dir, opts.gt_dir, opts.puzzle)
    sample = next(iter(dataset))
    dataset_shape = sample['data'].shape
    train_len = int(len(dataset) * opts.train_ratio)
    train, val = random_split(dataset, [train_len, len(dataset) - train_len])
    
    train_dl = DataLoader(train, batch_size=opts.batch_size, num_workers=opts.num_workers, shuffle=True,  worker_init_fn=seed_worker)
    val_dl =   DataLoader(val,   batch_size=opts.batch_size, num_workers=opts.num_workers, shuffle=True, worker_init_fn=seed_worker)
    
    autoencoder = BaselineClassifier(dataset_shape)
    checkpoint = ModelCheckpoint(dirpath=opts.run_dir, monitor='val_loss', filename='baseline-{epoch:02d}-{val_loss:.2f}', auto_insert_metric_name=False, every_n_train_steps=opts.checkpoint_every)
    trainer = pl.Trainer(gpus=1,
        max_epochs=opts.num_iters,
        progress_bar_refresh_rate=opts.display_every,
        callbacks=[checkpoint])
    trainer.fit(autoencoder, train_dl, val_dl)


if __name__ == "__main__":
    main()