FROM alpine

RUN apk add bash \
    && apk add bash-doc \
    && apk add bash-completion \
    && apk add nodejs \
    && apk add npm \
    && npm install -g pnpm \
    && pnpm -v
