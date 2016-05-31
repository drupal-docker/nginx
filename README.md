NGINX for Drupal
=================

[![Build Status](https://travis-ci.org/drupal-docker/nginx.svg?branch=master)](https://travis-ci.org/drupal-docker/nginx)
[![Docker Pulls](https://img.shields.io/docker/pulls/drupaldocker/nginx.svg?maxAge=2592000)](https://hub.docker.com/r/drupaldocker/nginx)

Version | Tags | Dockerfile
--- | --- | ---
1.11 | `latest`, `1` | [Dockerfile](https://github.com/drupal-docker/nginx/blob/master/mainline/Dockerfile)
1.10 | `stable` | [Dockerfile](https://github.com/drupal-docker/nginx/blob/master/stable/Dockerfile)

# Quickstart:

```bash
docker run -d -p 80:80 --volumes-from <php-or-data-container> --link <php-fpm-container>:php drupaldocker/nginx
```

# Environmental variables

No variables available

# Description

> Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Window..

> source: [nginx](https://hub.docker.com/_/nginx/)

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

"NGINX for Drupal" image was built on the top of official [NGINX image](https://hub.docker.com/r/_/nginx/) and [NGINX configuration for Drupal](https://www.nginx.com/resources/wiki/start/topics/recipes/drupal/)
