FROM nginx

MAINTAINER zaporylie

VOLUME /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf

COPY drupal.conf /etc/nginx/conf.d/default.conf
