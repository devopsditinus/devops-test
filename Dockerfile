FROM php:8.1.0-apache
WORKDIR /usr/src/myapp
COPY . /usr/src/myapp

CMD [ "php", "./your-script.php" ]
