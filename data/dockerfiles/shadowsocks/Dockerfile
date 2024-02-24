FROM centos:centos7

RUN yum install build-essential autoconf libtool openssl-devel gcc automake make -y \
    && yum update -y nss curl libcurl \
    && yum install git -y && git --version \
    && cd ~/ && mkdir install && cd install \
    && git clone https://github.com/niweisi/shadowsocks-libev.git \
    && cd shadowsocks-libev && ./configure && make && make install \
    && ss-server -v

