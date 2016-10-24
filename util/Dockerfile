FROM floydhub/dl-docker:cpu
MAINTAINER mynameisvinn

# remove unused stuff
RUN rm -rf caffe 
RUN rm run_jupyter.sh

# fetch dependencies
RUN luarocks install torch
RUN luarocks install nn
RUN luarocks install image
RUN luarocks install lua-cjson

# clone repo
RUN git clone https://github.com/jcjohnson/fast-neural-style
WORKDIR /root/fast-neural-style

# clean up
RUN rm -rf images doc test scripts images
RUN rm README.md print_options.lua requirements.txt slow_neural_style.lua train.lua webcam_demo.lua

# fetch pretrained model
RUN bash models/download_style_transfer_models.sh

# copy all folders into container
COPY . /root/fast-neural-style