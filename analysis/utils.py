import os, re, json, subprocess, shlex, sys, shutil, pickle
from glob import glob
import pytorch_lightning as pl
import torch, itertools
import torchvision.transforms as transforms
from torch.utils.data import DataLoader
import cv2


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
    ('agreement',   False),
    ('apocope',   False),
    ('shield',False),
    ('spy',    False),
    ('assimilation', False)
]

test_on = [
    # ('agreement', False),
    ('alternate-color', False),
    ('alternation', False),
    # ('alternation', True),
    ('aphaeresis', False),
    # ('apocope', False),
    # ('apocope', True),
    # ('assimilation', False),
    # ('assimilation', True),
    ('breaking', False),
    # ('breaking', True),
    ('circle-at-ends', False),
    # ('circle-at-ends', True),
    ('devoicing', False),
    # ('devoicing', True),
    ('meeussen', False),
    ('partition', False),
    # ('shield', False),
    # ('shield', True),
    # ('spy', False),
    # ('spy', True),
    ('threepack', False),
    # ('threepack', True),
    ('train', False),
    # ('train', True),
]

pz_pth = "data/clevr-cleaned-variants/"

LATENT_DIM = 512
LR         = 3e-4

############### CONSTANTS END ###############

class VDPImage(torch.utils.data.Dataset):
    def __init__(self, pz_pth, to_run):
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
        
        transform_list = [
                            transforms.ToPILImage(),
                            transforms.Resize((320, 320)),
                            transforms.ToTensor(),
                            transforms.Normalize(mean = [0.485, 0.456, 0.406], std = [0.229, 0.224, 0.225])
                        ]
        self.transform = transforms.Compose(transform_list)


    def __len__(self):
        return len(self.all_imgs)

    def __getitem__(self, pz_idx):
        imgs, label, v_dir = self.all_imgs[pz_idx]
        img_procd = torch.stack([self.transform(cv2.imread(img)) for img in imgs])
        return img_procd, label, v_dir



# class VDPDataModule(pl.LightningDataModule):
#     def setup(self, stage):
#         self.allset = VDPImage(pz_pth, to_run)
#         training_idxs = list(itertools.chain(*[list(range(l, h + 1)) for l, h in map(lambda x : pz_partition[x], train_on)]))
#         testing_idxs  = list(itertools.chain(*[list(range(l, h + 1)) for l, h in map(lambda x : pz_partition[x], test_on)]))
#         self.train_set = torch.utils.data.Subset(self.allset, training_idxs)
#         self.test_set  = torch.utils.data.Subset(self.allset, testing_idxs)

#     def train_dataloader(self):
#         # return DataLoader(self.train_set, batch_size=1, num_workers=0)
#         return DataLoader(self.train_set, batch_size=1, num_workers=4, pin_memory=True, shuffle=True)

#     def val_dataloader(self):
#         # return DataLoader(self.test_set, batch_size=1, num_workers=0)
#         return DataLoader(self.test_set, batch_size=5, num_workers=4, pin_memory=True)
