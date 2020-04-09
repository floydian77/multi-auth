FROM php:7.3-fpm

ARG DOCKER_USER_UID
ARG DOCKER_USER_GID
ARG XDEBUG_VERSION

RUN apt-get update && apt-get install -y \
    libmcrypt-dev \
    zlib1g-dev \
    libpng-dev \
    libzip-dev \
    gnupg \
    unzip \
    --no-install-recommends

RUN mkdir /.config && chown $DOCKER_USER_UID:$DOCKER_USER_GID /.config

RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install pdo_mysql

RUN pecl install xdebug-$XDEBUG_VERSION && docker-php-ext-enable xdebug
RUN echo 'xdebug.remote_port=9000' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini
RUN echo 'xdebug.remote_connect_back=1' >> /usr/local/etc/php/php.ini
