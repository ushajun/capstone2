FROM ubuntu
RUN apt update -y && apt install apache2 -y
EXPOSE 80
COPY . /var/www/html
ENTRYPOINT apache2ctl -D FOREGROUND
