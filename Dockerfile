FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu16.04

# Install
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \ 
         ca-certificates \
         bzip2 \
         curl \
         cmake \
         pkg-config \
         apt-file \
         libopencv-dev \
		 && rm -rf /var/lib/apt/lists/* \
		 && cmake --version

ADD . /install

RUN cd install && make
RUN cd install && make install

