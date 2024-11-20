FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install nginx -y
copy index.html  /var/www/html

