NGINX for Drupal
=================

[![Build Status](https://travis-ci.org/drupal-docker/nginx.svg?branch=master)](https://travis-ci.org/drupal-docker/nginx)

Version | Tags | Dockerfile | Layers
--- | --- | --- | ---
1.9 | `latest`, `1.9`, `1` | [Dockerfile](https://github.com/drupal-docker/nginx/blob/master/Dockerfile) | [![drupaldocker/php:5.4-cli](https://badge.imagelayers.io/drupaldocker/nginx:latest.svg)](https://imagelayers.io/?images=drupaldocker/nginx:latest)

# Quickstart:

```bash
docker run -d -p 80:80 --volumes-from <php-or-data-container> --link <php-fpm-container>:php drupal-docker/nginx
```

# Environmental variables

No variables

# Description

@todo

# Status

Proof of concept

# Contributing

1. Fork the repo
1. Create your feature branch
1. Commit your changes
1. Push to the branch
1. Create new Pull Request
1. Wait for result of automate tests

# Credits

"NGINX for Drupal" image was built on the top of official [NGINX image](https://hub.docker.com/r/_/nginx/).
