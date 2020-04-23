FROM nginx:alpine

WORKDIR /app

COPY default.conf /etc/nginx/conf.d/default.conf
COPY templates /app

EXPOSE 80
