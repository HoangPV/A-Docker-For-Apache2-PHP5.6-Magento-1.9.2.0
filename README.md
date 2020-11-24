# Docker image for Magento 1.x



#### Please note

> The primary goal of this repo is to create Docker images for Magento 1.x development and testing, especially for extensions and themes development. It lacks essential support for production deployment, e.g. Varnish and Redis. Use this wisely for production deployment.

> This repo is only for Magento 1.x. If you are looking for Magento 2.x, check out [alexcheng1982/docker-magento2](https://github.com/alexcheng1982/docker-magento2).

## Magento versions

Version | Git branch | Tag name
--------| ---------- |---------


## How to use

### Use as standalone container



Magento is installed into `/var/www/html` folder.

### Use Docker Compose

[Docker Compose](https://docs.docker.com/compose/) is the recommended way to run this image with MySQL database.

A sample `docker-compose.yml` can be found in this repo.

```yaml
version: '3.0'

services:
  web:
    image: vhphan/magento
    ports:
      - "80:80"
    links:
      - db
    env_file:
      - env
  db:
    image: mysql:5.6.23
    volumes:
      - db-data:/var/lib/mysql/data
    env_file:
      - env
  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    ports:
      - "8580:80"
    links:
      - db
volumes:
  db-data:
```

Then use `docker-compose up -d` to start MySQL and Magento server.

