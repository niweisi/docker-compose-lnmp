FROM node:14-alpine

COPY .bashrc /root/.bashrc
RUN apk add bash bash-doc bash-completion \
    && apk add curl \
    # && apk add vim \
    # telnet
    && apk add busybox-extras \
    && npm install -g pnpm \
    && npm config get registry \
    && npm config set registry https://registry.npmmirror.com/ \
    # && npm config set registry https://registry.npmjs.org/ \
    # && npm config set registry https://registry.npm.taobao.org \
    && npm config get registry \
