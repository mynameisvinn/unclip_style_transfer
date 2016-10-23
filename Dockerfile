FROM floydhub/dl-docker:cpu
MAINTAINER mynameisvinn

# fetch pretrained model prototxt and weights
RUN luarocks install torch
RUN luarocks install nn
RUN luarocks install image
RUN luarocks install lua-cjson
RUN git clone https://github.com/jcjohnson/fast-neural-style
WORKDIR /root/fast-neural-style
RUN bash models/download_style_transfer_models.sh