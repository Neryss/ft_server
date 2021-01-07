FROM debian:buster

RUN apt-get update -y && apt upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get install php -y
RUN apt-get install nginx -y
RUN apt-get install wget -y
RUN apt-get install php-fpm -y
RUN apt-get install php-mysqlnd -y

ENV MYSQL_USER="user"
ENV MYSQL_PWD="beat"

ADD ./srcs /srcs
WORKDIR /srcs
EXPOSE 80 443
ENTRYPOINT ./config.sh
