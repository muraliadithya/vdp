"""train the vae on puzzles instead of clevr domain images"""
"""From https://github.com/PyTorchLightning/lightning-bolts/blob/master/pl_bolts/models/autoencoders/basic_vae/basic_vae_module.py """
from pickle import FALSE
import urllib.parse
from argparse import ArgumentParser
import os, cv2
from glob import glob
import torch
import pytorch_lightning as pl
from torch.utils.data import DataLoader
from pytorch_lightning import LightningModule, Trainer, seed_everything
from torch import nn
from torch.nn import functional as F
from pytorch_lightning.callbacks import LearningRateMonitor
from pl_bolts import _HTTPS_AWS_HUB
from pl_bolts.datamodules.vision_datamodule import VisionDataModule
from pytorch_lightning.loggers import CSVLogger
from pl_bolts.models.autoencoders.components import (
    resnet18_decoder,
    resnet18_encoder,
    resnet50_decoder,
    resnet50_encoder,
)
import torchvision.transforms as transforms
import itertools

############### CONSTANTS START ###############
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

# key = (puzzle, is_swap)
pz_partition = {
                ('agreement', False): [0, 24],
                ('alternate-color', False): [25, 49],
                ('alternation', False): [50, 74],
                ('alternation', True): [375, 449],
                ('aphaeresis', False): [75, 99],
                ('apocope', False): [100, 124],
                ('apocope', True): [450, 499],
                ('assimilation', False): [125, 149],
                ('assimilation', True): [500, 574],
                ('breaking', False): [150, 174],
                ('breaking', True): [575, 599],
                ('circle-at-ends', False): [175, 199],
                ('circle-at-ends', True): [600, 624],
                ('devoicing', False): [200, 224],
                ('devoicing', True): [625, 649],
                ('meeussen', False): [225, 249],
                ('partition', False): [250, 274],
                ('shield', False): [275, 299],
                ('shield', True): [650, 724],
                ('spy', False): [300, 324],
                ('spy', True): [725, 774],
                ('threepack', False): [325, 349],
                ('threepack', True): [775, 799],
                ('train', False): [350, 374],
                ('train', True): [800, 824]
}

            
train_on = [
    ('apocope',     False),
    ('circle-at-ends', False),
    ('devoicing',      False),
    ('spy',            False),
]

test_on = [
    ('agreement',      False),
    ('alternate-color',False),
    ('alternation',    False),
    ('aphaeresis',     False),
    # ('apocope',        False),
    ('assimilation',   False),
    ('breaking',       False),
    # ('circle-at-ends', False),
    # ('devoicing',      False),
    ('meeussen',       False),
    ('partition',      False),
    ('shield',         False),
    # ('spy',            False),
    ('threepack',      False),
    ('train',          False),
]

pz_pth = "data/clevr-cleaned-variants/"


N_IMG_PER_PUZZLE = 6

############### CONSTANTS END ###############

class VAE(LightningModule):
    pretrained_urls = {
        "cifar10-resnet18": urllib.parse.urljoin(_HTTPS_AWS_HUB, "vae/vae-cifar10/checkpoints/epoch%3D89.ckpt"),
        "stl10-resnet18": urllib.parse.urljoin(_HTTPS_AWS_HUB, "vae/vae-stl10/checkpoints/epoch%3D89.ckpt"),
    }

    def __init__(
        self,
        input_height: int,
        enc_type: str = "resnet18",
        first_conv: bool = False,
        maxpool1: bool = False,
        enc_out_dim: int = 512,
        kl_coeff: float = 0.1,
        latent_dim: int = 256,
        lr: float = 1e-4,
        **kwargs,
    ):
        """
        Args:
            input_height: height of the images
            enc_type: option between resnet18 or resnet50
            first_conv: use standard kernel_size 7, stride 2 at start or
                replace it with kernel_size 3, stride 1 conv
            maxpool1: use standard maxpool to reduce spatial dim of feat by a factor of 2
            enc_out_dim: set according to the out_channel count of
                encoder used (512 for resnet18, 2048 for resnet50)
            kl_coeff: coefficient for kl term of the loss
            latent_dim: dim of latent space
            lr: learning rate for Adam
        """

        super().__init__()

        self.save_hyperparameters()

        self.lr = lr
        self.kl_coeff = kl_coeff
        self.enc_out_dim = enc_out_dim
        self.latent_dim = latent_dim
        self.input_height = input_height

        valid_encoders = {
            "resnet18": {
                "enc": resnet18_encoder,
                "dec": resnet18_decoder,
            },
            "resnet50": {
                "enc": resnet50_encoder,
                "dec": resnet50_decoder,
            },
        }

        if enc_type not in valid_encoders:
            self.encoder = resnet18_encoder(first_conv, maxpool1)
            self.decoder = resnet18_decoder(self.latent_dim, self.input_height, first_conv, maxpool1)
        else:
            self.encoder = valid_encoders[enc_type]["enc"](first_conv, maxpool1)
            self.decoder = valid_encoders[enc_type]["dec"](self.latent_dim, self.input_height, first_conv, maxpool1)

        self.fc_mu = nn.Linear(self.enc_out_dim, self.latent_dim)
        self.fc_var = nn.Linear(self.enc_out_dim, self.latent_dim)

    @staticmethod
    def pretrained_weights_available():
        return list(VAE.pretrained_urls.keys())

    def from_pretrained(self, checkpoint_name):
        if checkpoint_name not in VAE.pretrained_urls:
            raise KeyError(str(checkpoint_name) + " not present in pretrained weights.")

        return self.load_from_checkpoint(VAE.pretrained_urls[checkpoint_name], strict=False)

    def forward(self, x):
        x = self.encoder(x)
        mu = self.fc_mu(x)
        log_var = self.fc_var(x)
        p, q, z = self.sample(mu, log_var)
        return self.decoder(z)

    def _run_step(self, x):
        x = self.encoder(x)
        mu = self.fc_mu(x)
        log_var = self.fc_var(x)
        p, q, z = self.sample(mu, log_var)
        return z, self.decoder(z), p, q

    def sample(self, mu, log_var):
        std = torch.exp(log_var / 2)
        p = torch.distributions.Normal(torch.zeros_like(mu), torch.ones_like(std))
        q = torch.distributions.Normal(mu, std)
        z = q.rsample()
        return p, q, z

    def step(self, batch, batch_idx):
        x = batch
        z, x_hat, p, q = self._run_step(x)

        recon_loss = F.mse_loss(x_hat, x, reduction="mean")

        log_qz = q.log_prob(z)
        log_pz = p.log_prob(z)

        kl = log_qz - log_pz
        kl = kl.mean()
        kl *= self.kl_coeff

        loss = kl + recon_loss

        logs = {
            "recon_loss": recon_loss,
            "kl": kl,
            "loss": loss,
        }
        return loss, logs

    def training_step(self, batch, batch_idx):
        loss, logs = self.step(batch, batch_idx)
        self.log_dict({f"train_{k}": v for k, v in logs.items()}, on_step=True, on_epoch=False)
        return loss

    def validation_step(self, batch, batch_idx):
        loss, logs = self.step(batch, batch_idx)
        self.log_dict({f"val_{k}": v for k, v in logs.items()})
        return loss

    def configure_optimizers(self):
        optimizer = torch.optim.Adam(self.parameters(), lr=self.lr)
        lrs = {
        'scheduler': torch.optim.lr_scheduler.ReduceLROnPlateau(optimizer, patience=5, threshold=0.001),
        'monitor' : 'train_loss'}
        return {"optimizer": optimizer, "lr_scheduler": lrs}

    @staticmethod
    def add_model_specific_args(parent_parser):
        parser = ArgumentParser(parents=[parent_parser], add_help=False)

        parser.add_argument("--enc_type", type=str, default="resnet18", help="resnet18/resnet50")
        parser.add_argument("--first_conv", action="store_true")
        parser.add_argument("--maxpool1", action="store_true")
        parser.add_argument("--lr", type=float, default=1e-4)

        parser.add_argument(
            "--enc_out_dim",
            type=int,
            default=512,
            help="512 for resnet18, 2048 for bigger resnets, adjust for wider resnets",
        )
        parser.add_argument("--kl_coeff", type=float, default=0.1)
        parser.add_argument("--latent_dim", type=int, default=256)

        parser.add_argument("--batch_size", type=int, default=4)
        parser.add_argument("--num_workers", type=int, default=4)
        parser.add_argument("--data_dir", type=str, default=".")

        return parser

class VDPImage(torch.utils.data.Dataset):
    def __init__(self, pz_pth, puzzles, filter_set):
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
                    if (puzzle_name, 'swap' in v_dir) not in filter_set:
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
        self.all_imgs = list(sorted(self.all_imgs, key=lambda x: ('swap' in x[2], x[2])))

        transform_list = [transforms.ToPILImage(),
                        transforms.Resize((320, 320)),
                        transforms.ToTensor(),
                        transforms.Normalize(mean = [0.485, 0.456, 0.406], std = [0.229, 0.224, 0.225])]
        self.transform = transforms.Compose(transform_list)


    def __len__(self):
        return len(self.all_imgs) * N_IMG_PER_PUZZLE

    def __getitem__(self, img_idx):
        pz_idx = img_idx // N_IMG_PER_PUZZLE
        img_off = img_idx % N_IMG_PER_PUZZLE
        imgs, label, v_dir = self.all_imgs[pz_idx]
        img = self.transform(cv2.imread(imgs[img_off]))
        return img


class VDPDataModule(pl.LightningDataModule):
    def setup(self, stage):
        self.train_set   = VDPImage(pz_pth, to_run, train_on)
        self.testing_set = VDPImage(pz_pth, to_run, test_on)

    def train_dataloader(self):
        return DataLoader(self.train_set, batch_size=4, num_workers=4, pin_memory=True)

    def val_dataloader(self):
        return DataLoader(self.testing_set, batch_size=4, num_workers=4, pin_memory=True)




def cli_main(args=None):
    seed_everything(0)
    dm = VDPDataModule()
    height = 320
    model = VAE(input_height=height).from_pretrained("cifar10-resnet18")
    model_str = f"puzzle-pretrained-{height}-vae"
    checkpoint_callback = pl.callbacks.ModelCheckpoint(
            monitor="val_loss",
            dirpath="data/prototype/",
            filename= model_str + "-{epoch:02d}-{val_loss:.2f}",
            save_top_k=2,
            mode="min",)
    lr_monitor = LearningRateMonitor(logging_interval='step')
    csv_logger = CSVLogger(f"lightning_logs/{model_str}", )
    trainer = pl.Trainer(
        gpus=1,
        callbacks=[checkpoint_callback, lr_monitor],
        logger=csv_logger,
        max_epochs=50,
        check_val_every_n_epoch=5
        )

    trainer.fit(model, datamodule=dm)
    trainer.save_checkpoint(f"data/prototype/{model_str}-final.ckpt")
    print("Saved ckpt!")

    pt_model = VAE(input_height=height)
    pt_model = pt_model.load_from_checkpoint(f"data/prototype/{model_str}-final.ckpt", input_height=height)
    trainer.validate(pt_model, val_dataloaders=dm.val_dataloader())

    return dm, model, trainer


if __name__ == "__main__":
    dm, model, trainer = cli_main()