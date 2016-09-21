FROM nginx:stable-alpine

MAINTAINER drupal-docker <info@drupaldocker.org>

WORKDIR /var/www/html
VOLUME /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf
COPY drupal.conf /etc/nginx/conf.d/default.conf
