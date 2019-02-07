FROM php:7.2-fpm-alpine

LABEL maintainer="Nacho Salvador <nachosalvador83@gmail.com>"

# Install composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Setup working directory.
WORKDIR /app