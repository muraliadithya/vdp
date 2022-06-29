import torch
import torch.autograd as autograd         # computation graph
from torch import Tensor                  # tensor node in the computation graph
import torch.nn as nn                     # neural networks
import torch.nn.functional as F           # layers, activations and more
import torch.optim as optim               # optimizers e.g. gradient descent, ADAM, etc.
from torch.jit import script, trace       # hybrid frontend decorator and tracing jit
import numpy as np





class BaselineModel1(nn.Module):
    def __init__(self):
        super(BaselineModel1, self).__init__()
        # With square kernels and equal stride
        self.conv1 = nn.Conv1d(in_channels=(22), out_channels=6, kernel_size=(6), stride=6)
        self.l1    = nn.Linear(516, 6)
        self.softmax = nn.Softmax(dim=1)
        self.leakyrelu = nn.LeakyReLU(0.1)

        # l2/
    def forward(self,x):
        x = self.conv1(x)
        x = self.leakyrelu(x)
        x = x.view(x.shape[0], -1)
        x = self.softmax(self.l1(x))
        return x

class BaselineModel2(nn.Module):
    def __init__(self):
        super(BaselineModel2, self).__init__()
        # With square kernels and equal stride
        self.seq_modules = nn.Sequential(
            nn.Flatten(),
            nn.Linear(in_features=22*518, out_features=5*512),
            nn.ReLU(),
            nn.Linear(in_features=5*512, out_features=6))
        
    def forward(self,x):
        return self.seq_modules(x)



import os, random
import torch
import numpy as np
from torch import nn
import torch.nn.functional as F
from torchvision.datasets import MNIST
from torch.utils.data import DataLoader, dataloader, random_split
from torchvision import transforms
import pytorch_lightning as pl
from nn_baseline.datasets import IRDataset
from nn_baseline.options import get_options, seed_worker

AVAIL_GPUS = min(1, torch.cuda.device_count())

class BaselineAutoEncoder(pl.LightningModule):
    def __init__(self):
        super().__init__()
        self.encoder = nn.Sequential(
            nn.Linear(22 * 518, 6*128),
            nn.ReLU(),
            nn.Linear(6*128, 6))
        self.decoder = nn.Sequential(nn.Linear(6, 6*128),
            nn.ReLU(),
            nn.Linear(6*128, 22 * 518))

    def forward(self, x):
        embedding = self.encoder(x)
        return embedding

    def training_step(self, batch, batch_idx):
        x, y = batch
        x = x.view(x.size(0), -1)
        z = self.encoder(x)
        x_hat = self.decoder(z)
        loss = F.mse_loss(x_hat, y)
        self.log('train_loss', loss)
        return loss

    def configure_optimizers(self):
        optimizer = torch.optim.SGD(self.parameters(), nesterov=True, momentum=0.9, lr=3e-3)
        return optimizer

        
def main():
    x = torch.rand(5, 22, 512 + 6)
    model1 = BaselineModel1()
    y1 = model1(x)
    print("BM1", y1.shape)

    model2 = BaselineModel2()
    y2 = model2(x)
    print("BM2", y2.shape)



if __name__ == "__main__":
    main()
