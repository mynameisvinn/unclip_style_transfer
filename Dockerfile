FROM floydhub/dl-docker:cpu
MAINTAINER mynameisvinn

# fetch dependencies
RUN luarocks install torch
RUN luarocks install nn
RUN luarocks install image
RUN luarocks install lua-cjson

# clone repo
RUN git clone https://github.com/jcjohnson/fast-neural-style
WORKDIR /root/fast-neural-style

# fetch pretrained model
RUN bash models/download_style_transfer_models.sh

# copy images
COPY . /root/fast-neural-style
