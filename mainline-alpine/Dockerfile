FROM nginx:mainline-alpine

MAINTAINER drupal-docker <info@drupaldocker.org>

WORKDIR /var/www/html
VOLUME /var/www/html

# Ensure www-data user exists.
RUN addgroup -g 82 -S www-data \
  && adduser -u 82 -D -S -G www-data www-data

COPY nginx.conf /etc/nginx/nginx.conf
COPY drupal.conf /etc/nginx/conf.d/default.conf

COPY entrypoint.sh /usr/local/bin/
CMD "entrypoint.sh"
