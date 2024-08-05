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
    locales \
    zip \
    git \
    libonig-dev \
    libzip-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd pdo_mysql mbstring zip exif pcntl && \
    rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy Apache configuration
COPY ./apache.conf /etc/apache2/sites-available/000-default.conf

# Copy application files
COPY . /var/www/html

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html

# Update Composer dependencies
# RUN composer update --no-dev --optimize-autoloader

# Install PHP dependencies using Composer
# RUN composer install --no-dev --optimize-autoloader

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
