FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update 
RUN apt-get install -y apache2 php
COPY php.php /var/www/html
COPY md5.php /var/www/html

CMD apachectl -D FOREGROUND 
