FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir -p /app/dso

WORKDIR /app/dso

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get update && apt-get install build-essential software-properties-common -y \
    sudo \
    cmake \
    libboost-all-dev \
    graphviz \
    libgl1-mesa-dev \
    libglew-dev \
    libhdf5-dev \
    libfreetype6-dev \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libavutil-dev \
    sed \
    gcc-9 \
    g++-9 \
    zlib1g \
    ninja-build \
    wget \
    ffmpeg \
    libgflags-dev \
    python3 \
    python3-pip \
    git \
    zsh \
    unzip \
    python3-dev \
    libopenblas-dev \
    bzip2 \
    ca-certificates \
    curl \
    libgoogle-glog-dev \
    libgflags-dev \
    libatlas-base-dev \
    libsuitesparse-dev \
    libfmt-dev \
    libflann-dev \
    libeigen3-dev \
    libopencv-dev

# TODO: fix error in this stage
RUN cd /app/dso && \
    git clone -b v0.6 https://github.com/stevenlovegrove/Pangolin.git && \
    cd Pangolin && \
    mkdir build && \
    cd build && \
    cmake .. \
    make install -j4 && \
    cd ../.. && \
    rm -rf Pangolin

RUN mkdir build \
	cd build \
	cmake .. \
	make -j4