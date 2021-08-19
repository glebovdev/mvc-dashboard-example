### Introduction
Example of sales dashboard built on top of simple MVC

### Requirements
- Docker
- docker-compose

### How to run
```shell
$ cd .docker
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec php-fpm bash
# inside the container run
$ composer install

# to exit php-fpm container run
$ exit
```