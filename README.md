# fast-neural-style

## what is this?
style transfer for 360 photos and videos. 

## specs
* ubuntu 14.04
* [torch](http://torch.ch/). includes nn, cutorch, image, lua-cjson, cunn and cuDNN bindings - the good stuff.

## ml deets
for more information on approach and dataset, refer to ["perceptual losses for real time style transfer and super resolution."](https://cs.stanford.edu/people/jcjohns/eccv16/)

## get docker image

building torch/lua from source for osx ruined my weekend. it is not for the faint of heart so you should do one of the following:

### option 1: pull from docker hub

```
docker pull mynameisvinn/unclip_style_transfer
```

### option 2: build locally (recommended for now)
```
git clone https://github.com/mynameisvinn/unclip_style_transfer
cd unclip_style_transfer
docker build -t mynameisvinn/unclip_style_transfer .
```

## run

### option 1 (recommended)

from command line, do

```
docker run -it -p 8888:8888 -p 6006:6006 -v /Users/vincenttang/dropbox/temp/unclip_style_transfer/data:/root/fast-neural-style/data mynameisvinn/unclip_style_transfer th fast_neural_style.lua \
  -model models/eccv16/the_wave.t7 \
  -image_size 200 \
  -input_dir data/in/ \
  -output_dir data/out/
```
if successful, you should see modified images in /data/out.

### option 2

from command line, do

```
docker run -it -p 8888:8888 -p 6006:6006 -v /Users/vincenttang/dropbox/temp/unclip_style_transfer/data:/root/fast-neural-style/data mynameisvinn/unclip_style_transfer
```

then, from container, do

```
th fast_neural_style.lua \
  -model models/eccv16/the_wave.t7 \
  -image_size 200 \
  -input_dir data/in/ \
  -output_dir data/out/
```


