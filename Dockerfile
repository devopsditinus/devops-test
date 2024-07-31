FROM php:8.3-apache
# Install MySQL client, server, and other dependencies
RUN sudo dnf update && \
	sudo dnf install -y \
	default-mysql-client \
	default-mysql-server \
	git \
	&& sudo dnf clean \
	&& rm -rf /var/lib/apt/lists/*

# Install mysqli PHP extension for MySQL support
RUN docker-php-ext-install mysqli
# Install Composer
COPY --from=composer/composer:latest-bin /composer /usr/bin/composer
# Set working directory
WORKDIR /usr/local/apache2/htdocs/
COPY . /usr/local/apache2/htdocs/

docker run -p "80:80" -v ${PWD}/app:/app mattrayner/lamp:latest-1804
