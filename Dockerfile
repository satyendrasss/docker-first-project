FROM php:8.1-apache

# Install necessary extensions
#RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get update && apt-get install -y \
    libicu-dev \
    && docker-php-ext-install intl

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory to /var/www/html
WORKDIR /var/www/html

# Copy project files into the container
COPY . /var/www/html

# Set permissions
#RUN chown -R www-data:www-data /var/www/html
#RUN chmod -R 755 /var/www/html

EXPOSE 80
CMD ["apache2-foreground"]
