import os
import glob
from shlex import split
from subprocess import Popen, PIPE

command = lambda i1, i2 : split(f"python get_distance.py --model ./deepranking-v2-150000.h5 --image1 {i1} --image2 {i2}")
out_path = "./puzzle/results.txt"
out_file = open(out_path, 'w')
train = glob.glob("./puzzle/train/*")
test  = glob.glob("./puzzle/test/*")
imgs = train + test

for i1 in train:
    outputs = list()
    for i2 in test:
        p = Popen(command(i1, i2), stdout=PIPE, stderr=PIPE)
        output, err = p.communicate()
        outputs.append((float(output), i2))
        print(f"dist b/w {os.path.basename(i1)} & {os.path.basename(i2)} = {float(output)}", file=out_file)
    # outputs = sorted(outputs, key = lambda t: t[0])
    # print(i1, outputs)
    # print(i1, fmt(outputs[0]) , file=out_file)
    # print(i1, fmt(outputs[-1]), file=out_file)


out_file.close()
# python get_distance.py --model /home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5 --image1 ./puzzle/train/pplwearinghats1.jpeg --image2 ./puzzle/test/pplwearinghats2.jpeg    > ./logs/1to2.log;
# python get_distance.py --model /home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5 --image1 ./puzzle/train/pplwearinghats1.jpeg --image2 ./puzzle/test/manwithoutshirt3.jpeg   > ./logs/1to0.log;
# python get_distance.py --model /home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5 --image1 ./puzzle/train/pplwearinghats3.jpeg --image2 ./puzzle/test/pplwearinghats2.jpeg    > ./logs/3to2.log;
# python get_distance.py --model /home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5 --image1 ./puzzle/train/pplwearinghats3.jpeg --image2 ./puzzle/test/manwithoutshirt3.jpeg   > ./logs/3to0.log;
# python get_distance.py --model /home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5 --image1 ./puzzle/train/pplwearinghats5.jpeg --image2 ./puzzle/test/pplwearinghats2.jpeg    > ./logs/5to2.log;
# python get_distance.py --model /home/ubuntu/vdp-tool-chain/data/triplet_loss_baseline-data/deepranking-v2-150000.h5 --image1 ./puzzle/train/pplwearinghats5.jpeg --image2 ./puzzle/test/manwithoutshirt3.jpeg   > ./logs/5to0.log;
