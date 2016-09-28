FROM nginx:mainline-alpine

MAINTAINER drupal-docker <info@drupaldocker.org>

WORKDIR /var/www/html
VOLUME /var/www/html

# ensure www-data user exists
RUN set -x \
	&& addgroup -g 82 -S www-data \
	&& adduser -u 82 -D -S -G www-data www-data

COPY nginx.conf /etc/nginx/nginx.conf
COPY drupal.conf /etc/nginx/conf.d/default.conf
