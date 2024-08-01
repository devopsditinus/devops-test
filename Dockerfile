FROM php:8.1-apache 
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
#mysql -uroot -p [isempty]
mysql> ALTER USER 'user' IDENTIFIED WITH mysql_native_password BY 'test';
COPY . /var/www/html
