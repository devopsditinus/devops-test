# Use the official PHP image with Apache
FROM php:8.1-apache

# Set the working directory
WORKDIR /var/www/html

# Install necessary PHP extensions and Composer
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy the Laravel project files to the container
COPY . /var/www/html

# Copy the Apache vhost configuration
COPY ./docker/apache/000-default.conf /etc/apache2/sites-available/000-default.conf

# Set the correct permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html/storage \
    && chmod -R 755 /var/www/html/bootstrap/cache

# Install Laravel dependencies
RUN composer install --no-interaction

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
