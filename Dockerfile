FROM php:8.0.5-fpm-alpine

COPY --chown=www-data:www-data . /srv/app

COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /srv/app

RUN docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-install opcache
