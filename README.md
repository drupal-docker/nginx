NGINX configured for Symfony 3.3
================================

[![Docker Pulls](https://img.shields.io/docker/pulls/digitalpulp/nginx.svg?maxAge=2592000)](https://hub.docker.com/r/fathershawn/nginx-symfony)

| Version | Tags | Dockerfile |
| --- | --- | --- |
| 1.0 | `latest`, `1.0` | [Dockerfile](https://github.com/FatherShawn/nginx/blob/master/LICENSE/Dockerfile) |

Both docroot and server name may be set via environment variables:
```
    environment:
      VIRTUAL_HOST: yoursite.tld
      DOCROOT: /var/www/web
      SERVER_NAME: yoursite.tld
```
