FROM php:8.1-apache 

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
RUN a2enmod rewrite
RUN a2enmod ssl
RUN service apache2 restart
