FROM php:7.4-apache
COPY php.ini /usr/local/etc/php/

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql mysqli

RUN apt-get install -y zip unzip


RUN apt-get install -y git


RUN a2enmod rewrite
RUN apt-get install -y curl
RUN apt-get install -y nano


RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN mkdir /var/www/html/laravel-delivery-service
RUN mkdir /var/www/html/laravel-delivery-service/public

RUN usermod -u 1000 www-data

COPY laravel.conf /etc/apache2/sites-enabled/laravel.conf

RUN service apache2 restart
