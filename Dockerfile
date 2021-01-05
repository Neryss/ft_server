FROM debian:buster

RUN apt-get update && apt-get install default-mysql-server php nginx -y

ADD ./srcs /srcs
WORKDIR /srcs
# ENTRYPOINT [ "./config.sh" ]
EXPOSE 80
# RUN bash config.sh