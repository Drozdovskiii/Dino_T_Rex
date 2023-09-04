# Используем официальный образ Nginx
FROM nginx:latest

# Копируем файл "index.html" в папку "usr/share/nginx/html" образа
COPY index.html /usr/share/nginx
COPY script.js /usr/share/nginx
COPY style.css /usr/share/nginx
COPY cactus.png /usr/share/nginx/img
COPY trex.png /usr/share/nginx/img
# Этот порт будет слушаться контейнером
EXPOSE 80

# Команда для запуска Nginx при старте контейнера
CMD ["nginx", "-g", "daemon off;"]