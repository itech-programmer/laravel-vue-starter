# Используем официальный образ PHP
FROM php:8.1-fpm

# Устанавливаем зависимости
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev unzip git
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd pdo pdo_pgsql

# Устанавливаем Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Устанавливаем рабочую директорию
WORKDIR /var/www/backend

# Копируем файлы
COPY . .

# Устанавливаем зависимости Laravel
RUN composer install

# Копируем .env.example в .env
RUN cp .env.example .env

# Генерируем ключ приложения
RUN php artisan key:generate

# Открываем порт 9000
EXPOSE 9000

# Запускаем PHP-FPM
CMD ["php-fpm"]
