# Dockerfile
FROM php:8.2-apache

# 1. Aggiorna sistema e installa dipendenze
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    zip \
    unzip \
    curl \
    && rm -rf /var/lib/apt/lists/*

# 2. Installa estensioni PHP
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install \
    pdo \
    pdo_mysql \
    gd \
    zip

# 3. Abilita moduli Apache
RUN a2enmod rewrite
RUN a2enmod headers

# 4. Configura PHP
RUN echo "upload_max_filesize = 10M" > /usr/local/etc/php/conf.d/uploads.ini && \
    echo "post_max_size = 10M" >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo "memory_limit = 256M" >> /usr/local/etc/php/conf.d/uploads.ini

# 5. Crea directory e imposta permessi
RUN mkdir -p /var/www/html && \
    chown -R www-data:www-data /var/www/html

# 6. Copia applicazione
COPY . /var/www/html/

# 7. Imposta working directory
WORKDIR /var/www/html

# 8. Esponi porta 80
EXPOSE 80

# 9. Comando di avvio
CMD ["apache2-foreground"]
