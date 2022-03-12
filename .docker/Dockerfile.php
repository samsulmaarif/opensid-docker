FROM php:7.4-fpm-alpine
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev zlib-dev libzip-dev tidyhtml-dev curl-dev && \
    docker-php-ext-install pdo pdo_mysql mysqli zip bcmath gd json tidy curl fileinfo
EXPOSE 9000
