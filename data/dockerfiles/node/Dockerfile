FROM centos:centos7

RUN yum install build-essential autoconf libtool openssl-devel gcc automake make vim -y \
    && yum update -y nss curl libcurl \
    && yum install git -y && git --version \
    && cd ~/ && mkdir install && cd install \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
    && source ~/.bashrc \
    && nvm install 14 && node -v && npm -v

