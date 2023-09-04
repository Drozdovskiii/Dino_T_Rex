# Используем официальный образ Nginx
FROM nginx:latest

# Копируем файл "index.html" в папку "usr/share/nginx/html" образа
COPY trx_game/index.html /usr/share/nginx/html

# Этот порт будет слушаться контейнером
EXPOSE 80

# Команда для запуска Nginx при старте контейнера
CMD ["nginx", "-g", "daemon off;"]