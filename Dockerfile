# Use PHP 8.1 with Apache
FROM php:8.1-apache

# Set working directory
WORKDIR /var/www/html

# Install system dependencies and PHP extensions
RUN apt-get update && \
    apt-get install -y \
	build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    php-cli \
    php-fpm \
    php-json \
    php-common \
    php-mysqlnd \
    php-xml \
    php-mbstring \
    php-zip \
    php-pdo \
    php-bcmath \
    php-tokenizer \
    php-ctype \
    php-fileinfo \
    php-openssl \
    php-gd \
    php-curl \
    php-intl \
    php-xmlwriter \
    php-xmlreader \
    php-simplexml \
    php-phar \
    php-iconv \
    curl \
    git \
    unzip\
	libonig-dev \
    libzip-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd pdo_mysql mbstring zip exif pcntl && \
    rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html

# Copy Laravel application files
COPY . .

# Install PHP dependencies using Composer
RUN composer install --no-dev --optimize-autoloader

# Set permissions for Laravel
RUN chown -R apache:apache /var/www/html && \
    chmod -R 755 /var/www/html/storage

# Copy Apache configuration file
COPY ./docker/apache/000-default.conf /etc/httpd/conf.d/000-default.conf

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
