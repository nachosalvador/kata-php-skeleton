FROM php:7.1-fpm-alpine

RUN apk add --no-cache bash curl && rm -Rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY php-fpm.conf /etc/php7/

EXPOSE 9000

CMD ["php-fpm"]