ARG PHP_VERSION=8.0-fpm
FROM php:${PHP_VERSION}

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
	&& docker-php-ext-configure zip \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install mysqli \
    && docker-php-ext-install pdo \
    && docker-php-ext-install pdo_mysql

ARG PUID=1000
ENV PUID ${PUID}
ARG PGID=1000
ENV PGID ${PGID}

RUN groupmod -o -g ${PGID} www-data && \
    usermod -o -u ${PUID} -g www-data www-data

# Add composer to the container
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

CMD ["php-fpm"]

EXPOSE 9000