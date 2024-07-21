# Dockerfile
FROM php:8.1-apache

# Install dependencies for SQLite
RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    pkg-config \
    && docker-php-ext-install pdo pdo_mysql pdo_sqlite

# Enable Apache mod_rewrite for clean URLs
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Copy the application files
COPY . /var/www/html/

# Set proper permissions for the Apache document root
RUN chown -R www-data:www-data /var/www/html