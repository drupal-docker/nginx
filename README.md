NGINX for Drupal
=================

# Contributing

Contributions are highly welcomed and appreciated. Every little help counts, so do not hesitate!

# Quickstart:

````
docker run -d -p 80:80 --volumes-from php-fpm --link php-fpm:php drupal-docker/nginx
````
where `php-fpm` is a name of running [`drupal-docker/php:fpm`](https://github.com/drupal-docker/php) container

# Versions (Docker tags):

- `latest` ([Dockerfile](https://github.com/drupal-docker/nginx/blob/master/Dockerfile))

# Roadmap

- Fix nginx configuration
- Fix vhost configuration
- Fix documentation

# Status

Proof of concept

# Credits

"NGINX for Drupal" image was built on the top of official [NGINX image](https://hub.docker.com/r/_/nginx/).
