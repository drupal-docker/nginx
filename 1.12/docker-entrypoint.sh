#!/bin/sh
set -e

# Configure docroot.
sed -i 's@%DOCROOT%@'"${DOCROOT}"'@' /etc/nginx/conf.d/*.conf
echo "Configured docroot to ${DOCROOT}."

# Set server name.
sed -i 's/%SERVER_NAME%/'"${SERVER_NAME}"'/' /etc/nginx/conf.d/*.conf
echo "Configured server name to ${SERVER_NAME}."

# Set php service name.
sed -i 's/%PHP_SERVICE_NAME%/'"${PHP_SERVICE_NAME}"'/' /etc/nginx/conf.d/*.conf
echo "Configured server name to ${PHP_SERVICE_NAME}."

exec "$@"
