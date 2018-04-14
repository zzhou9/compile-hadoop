FROM ubuntu:14.04

MAINTAINER zzhou9 <zhoujunlin19861115@gmail.com>

# install dependencies for compiling hadoop
RUN apt-get update && \
    apt-get install -y wget \
                       openjdk-7-jdk \
                       libprotobuf-dev \
                       protobuf-compiler \
                       maven \
                       cmake \
                       build-essential \
                       pkg-config \
                       libssl-dev \
                       zlib1g-dev \
                       llvm-gcc \
                       automake \
                       autoconf \
                       make

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
