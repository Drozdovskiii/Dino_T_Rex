# Используем официальный образ Nginx
FROM nginx:latest

# Копируем файл "index.html" в папку "usr/share/nginx/html" образа
COPY index.html /usr/share/nginx
COPY script.js /usr/share/nginx
COPY style.css /usr/share/nginx
COPY img/ /usr/share/nginx/html
# Этот порт будет слушаться контейнером
EXPOSE 80

# Команда для запуска Nginx при старте контейнера
CMD ["nginx", "-g", "daemon off;"]