FROM nginx:stable

MAINTAINER drupal-docker <info@drupaldocker.org>

WORKDIR /var/www/html
VOLUME /var/www/html

COPY nginx.conf /etc/nginx/nginx.conf
COPY drupal.conf /etc/nginx/conf.d/default.conf

ENV DOCROOT="/var/www/html" \
  SERVER_NAME="_"

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
