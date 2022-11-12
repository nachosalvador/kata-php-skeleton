FROM php:8.1-fpm

LABEL maintainer="Nacho Salvador <nachosalvador83@gmail.com>, Pablo Dobón <dbn000@gmail.com>"

RUN apt-get clean
RUN apt-get update && apt-get install -y \
    	git \
    	zip \
    	unzip

# Install composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Setup working directory.
WORKDIR /app