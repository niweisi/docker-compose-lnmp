FROM php:7.3.19-fpm

# 国内debian源
ADD sources_bak.list /etc/apt/
RUN mv /etc/apt/sources.list /etc/apt/sources.list_bak \
    && mv /etc/apt/sources_bak.list /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libmagickwand-dev \
        zlib1g-dev \
        librabbitmq-dev \
        libssh-dev \
    # 安装扩展
    && docker-php-ext-install -j$(nproc) bcmath calendar gettext mysqli pdo_mysql sockets \
    # 如果安装的扩展需要自定义配置时
    # gd
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    # redis
    && extName='phpredis' \
    && curl -fsSL https://github.com/phpredis/phpredis/archive/5.2.2.tar.gz -o ${extName}.tar.gz \
    && mkdir -p /tmp/${extName} \
    && tar -xf ${extName}.tar.gz -C /tmp/${extName} --strip-components=1 \
    && rm ${extName}.tar.gz \
    && docker-php-ext-install /tmp/${extName} \
    && rm -r /tmp/${extName} \
    # swoole
    && extName='swoole' \
    && curl -fsSL https://github.com/swoole/swoole-src/archive/v4.5.2.tar.gz -o ${extName}.tar.gz \
    && mkdir -p /tmp/${extName} \
    && tar -xf ${extName}.tar.gz -C /tmp/${extName} --strip-components=1 \
    && rm ${extName}.tar.gz \
    && docker-php-ext-install /tmp/${extName} \
    && rm -r /tmp/${extName} \
    # amqp
    && extName='amqp' \
    && curl -fsSL https://pecl.php.net/get/amqp-1.10.2.tgz -o ${extName}.tar.gz \
    && mkdir -p /tmp/${extName} \
    && tar -xf ${extName}.tar.gz -C /tmp/${extName} --strip-components=1 \
    && rm ${extName}.tar.gz \
    && docker-php-ext-install /tmp/${extName} \
    && rm -r /tmp/${extName} \
    && extName=''
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
