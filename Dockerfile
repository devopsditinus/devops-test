FROM php:8.1-apache 
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN sudo yum update
&& sudo yum install -y libzip-dev
&& sudo yum install -y zlib1g-dev
&& sudo yum install -y iputils-ping
&& sudo yum install -y mycli
&& sudo yum /var/lib/apt/lists/*
&& docker-php-ext-install zip
&& docker-php-ext-install mysqli
&& docker-php-ext-enable mysqli

COPY . /var/www/html
