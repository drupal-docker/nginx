#!/bin/sh

set -e

# Configure docroot.
if [ -n "$NGINX_DOCROOT" ]; then
    sed -i 's@root /var/www/html;@'"root ${NGINX_DOCROOT};"'@' /etc/nginx/conf.d/*.conf
    echo "changed nginx docroot to ${NGINX_DOCROOT}."
fi

# Ensure server name defined.
if [ -z "$NGINX_SERVER_NAME" ]; then
    NGINX_SERVER_NAME=drupal
fi

# Set server name
sed -i 's/SERVER_NAME/'"${NGINX_SERVER_NAME}"'/' /etc/nginx/conf.d/*.conf
echo "Configured nginx server name to ${NGINX_SERVER_NAME}."

exec nginx -g "daemon off;"
