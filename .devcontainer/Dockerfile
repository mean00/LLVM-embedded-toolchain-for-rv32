FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
ARG USER_UID=1000
ARG USER_GID=1000
ARG USERNAME=ubuntu
#  && sed -i 's/archive.ubuntu.com/192.168.0.9:3142\/archive.ubuntu.com/g' /etc/apt/sources.list.d/ubuntu.sources \
#  && sed -i 's/security.ubuntu.com/192.168.0.9:3142\/security.ubuntu.com/g' /etc/apt/sources.list.d/ubuntu.sources \

RUN : \
  && apt-get update \
  && apt-get install -y \
    apt-utils \
    build-essential \
    bzip2 \
    cmake \
    ccache \
    perl \
    check \
    curl \
    git \
    git-lfs \
    libxml2-dev \
    make \
    meson \
    ninja-build \
    patch \
    python3 \
    sudo \
    unzip \
    wget \
    xz-utils \
    zip \
     \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/* \
  && update-alternatives --install /usr/bin/python python /usr/bin/python3 10 \
  && :



