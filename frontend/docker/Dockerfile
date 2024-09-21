# Используем официальный образ Node.js
FROM node:16

# Устанавливаем рабочую директорию
WORKDIR /var/www/frontend

# Копируем package.json и yarn.lock
COPY package.json yarn.lock ./

# Устанавливаем зависимости
RUN yarn install

# Копируем файлы проекта
COPY . .

# Собираем приложение
RUN yarn build

# Открываем порт 8080
EXPOSE 8080

# Запускаем приложение
CMD ["yarn", "serve"]
