FROM php:8.3-fpm

RUN apt-get update \
    && apt-get install -y \
        zip \
        unzip \
        git \
        libicu-dev \
    && rm -rf /var/lib/apt/lists/*


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html/
COPY . .

RUN chown -R www-data:www-data /var/www/html/ 
USER www-data
RUN composer install --no-dev --optimize-autoloader

RUN php bin/console asset-map:compile && php bin/console cache:clear --env=prod
