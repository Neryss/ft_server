# !/bin/bash
service nginx start
service mysql start
service php7.3-fpm start

./phpmyadmininstall.sh
./wordpress.sh

mysql -u root -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PWD}';
GRANT ALL PRIVILEGES ON * . * TO '${MYSQL_USER}'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;"

mysql -u root -e "CREATE DATABASE wordpress;"

openssl req -x509 -nodes -new -sha256 -days 1024 -newkey rsa:2048 -keyout RootCA.key -out RootCA.pem -subj "/C=US/CN=Example-Root-CA"
openssl x509 -outform pem -in RootCA.pem -out RootCA.crt

./autoindex_on.sh

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log