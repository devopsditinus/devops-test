FROM php:7.1.2-apache 
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update
&& apt-get upgrade -y
&& apt-get install -y libzip-dev
&& apt-get install -y zlib1g-dev
&& apt-get install -y iputils-ping
&& apt-get install -y mycli
&& rm -rf /var/lib/apt/lists/*
&& docker-php-ext-install zip
&& docker-php-ext-install mysqli
&& docker-php-ext-enable mysqli
