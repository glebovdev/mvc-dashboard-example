**⚠️ Important: do not use in production! This repo contains sample code ⚠️**

### Introduction
Example of sales dashboard built on top of simple MVC

### Requirements
- Docker
- docker-compose

### Installation

#### Build Docker images
```shell
$ cd .docker
$ docker-compose build

# Start the containers
$ docker-compose up -d
```

#### Copy .env.example into .env
```shell
$ cp .env.example .env
```

#### Install Composer dependencies
```shell
$ docker-compose exec php-fpm composer install
```

#### Upload SQL data
```shell
$ docker-compose exec -T mariadb mysql -udefault -psecret default < ../database.sql
```
