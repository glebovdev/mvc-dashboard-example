**⚠️ Important: do not use in production! This repo contains sample code ⚠️**

### Introduction
Example of sales dashboard built on top of simple MVC

### Requirements
- Docker
- docker-compose

### Installation

#### Copy .env.example into .env inside `www` directory
```shell
$ cd www
$ cp .env.example .env
```

#### Build Docker images inside `.docker` directory
```shell
$ cd .docker
$ docker-compose build

# Start the containers
$ docker-compose up -d
````

#### Install Composer dependencies
```shell
$ docker-compose exec php-fpm composer install
```

#### Upload SQL data
```shell
$ docker-compose exec -T mariadb mysql -udefault -psecret default < ../database.sql
```

#### Details
* Docker containers are in `.docker` folder (nginx, mariadb and **php8**-fpm)
* `www` folder contains code
* Routes are in `www/routes/routes.php`
* Only GET and POST supported for now
* Controllers are invokable, i.e. method `__invoke(RequestInterface $request)` is mandatory
* Frontend: Bootstrap 5.1.0 + ChartJS for graph

![Example view](https://user-images.githubusercontent.com/2257771/130661069-763999f8-e721-4d1f-a175-6fee25581f80.png)

##### Check code quality
```shell
$ docker-compose exec php-fpm composer lint
```