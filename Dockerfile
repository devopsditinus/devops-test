FROM php:8.1.0-apache
WORKDIR /app/backend


# Mod Rewrite
RUN a2enmod rewrite
COPY requirements.txt /app/backend
RUN pip install -r requirements.txt

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# PHP Extension
RUN docker-php-ext-install gettext intl pdo_mysql gd

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd
COPY . /app/backend
