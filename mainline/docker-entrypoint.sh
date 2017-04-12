#!/bin/sh
set -e

# Configure DOCROOT.
sed -i 's@%DOCROOT%@'"${DOCROOT}"'@' /etc/nginx/conf.d/*.conf
echo "Configured docroot to ${DOCROOT}."

# Set server name.
sed -i 's/%SERVER_NAME%/'"${SERVER_NAME}"'/' /etc/nginx/conf.d/*.conf
echo "Configured server name to ${SERVER_NAME}."

# Get the path to the parent of $DOCROOT
count=`echo "${DOCROOT}" | awk -F "/" '{print NF-1}'`
root=`echo "$DOCROOT" | cut -d'/' -f-${count}`

# If $DOCROOT does not exist, make it so ownership can be set.
if [ ! -d ${DOCROOT} ]; then
  mkdir -p ${DOCROOT}
fi

# Set ownership of DOCROOT
chown -R www-data:www-data ${root}
echo "Set ${root} to belong to www-data"

exec "$@"
