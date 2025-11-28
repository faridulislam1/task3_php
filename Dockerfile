FROM php:8.2-apache

# Install BCMath

RUN docker-php-ext-install bcmath

# Enable mod_rewrite

RUN a2enmod rewrite

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html
