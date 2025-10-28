FROM nginx:stable-alpine

# Копируем конфиг и статику
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
