import pytorch_lightning as pl
import torch, itertools
import torchvision.transforms as transforms
from torch.utils.data import DataLoader
import cv2

class VDPImage(torch.utils.data.Dataset):
    def __init__(self, pz_pth, to_run, images_only=False, emit_path=False):
        self.images_only = images_only
        self.emit_path = emit_path
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
        self.all_imgs = list(sorted(self.all_imgs, key=lambda x: ('swap' in x[2], x[2]) ))
        
        transform_list = [
                            transforms.ToPILImage(),
                            transforms.Resize((320, 320)),
                            transforms.ToTensor(),
                            transforms.Normalize(mean = [0.485, 0.456, 0.406], std = [0.229, 0.224, 0.225])
                        ]
        self.transform = transforms.Compose(transform_list)

    @staticmethod
    def process_image(imgs):
        transform_list = [
                            transforms.ToPILImage(),
                            transforms.Resize((320, 320)),
                            transforms.ToTensor(),
                            transforms.Normalize(mean = [0.485, 0.456, 0.406], std = [0.229, 0.224, 0.225])
                        ]
        transform = transforms.Compose(transform_list)

        img_procd = torch.stack([transform(cv2.imread(img)) for img in imgs])
        return img_procd

        


    def __len__(self):
        if self.images_only:
            return len(self.all_imgs) * 6
        return len(self.all_imgs)

    def __getitem__(self, pz_idx):
        if self.images_only:
            imgs, label, v_dir = self.all_imgs[pz_idx // 6]
            img = imgs[pz_idx % 6]
            img_procd = self.transform(cv2.imread(img))
            return img_procd
        imgs, label, v_dir = self.all_imgs[pz_idx]
        img_procd = torch.stack([self.transform(cv2.imread(img)) for img in imgs])
        if self.emit_path:
            return img_procd, label, v_dir
        return img_procd, label