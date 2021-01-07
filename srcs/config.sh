# !/bin/bash
service nginx start
service mysql start
service php7.3-fpm start

./phpmyadmininstall.sh
./wordpress.sh

mysql -u root -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'bite';
GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;"

mysql -u root -e "CREATE DATABASE wordpress;"

service nginx restart

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log