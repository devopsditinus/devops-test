FROM httpd:2.4

# Set environment variables
ENV PHP_VERSION=8.0
ENV COMPOSER_VERSION=2.1.9

# Update the system and install necessary packages
RUN dnf -y update && \
    dnf -y install epel-release && \
    dnf -y install \
    php \
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
    unzip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION}

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
