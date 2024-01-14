FROM alpine

RUN apk add bash \
    && apk add bash-doc \
    && apk add bash-completion \
    && apk add nodejs \
    && apk add npm \
    && npm install -g pnpm \
    && pnpm -v \
    && npm config get registry \
    && npm config set registry https://registry.npmmirror.com/ \
    && npm config get registry

