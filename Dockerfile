FROM debian:buster

RUN apt-get update -y && apt upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get install php -y
RUN apt-get install nginx -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

ADD ./srcs /srcs
WORKDIR /srcs
EXPOSE 80 443
ENTRYPOINT ./config.sh
