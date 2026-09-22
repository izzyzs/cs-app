FROM ubuntu:22.04

RUN apt update && apt install -y \
    build-essential \
    gcc \
    gdb \
    make \
    binutils \
    vim \
    less \
    man \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work