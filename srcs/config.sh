# !/bin/bash
service nginx start
service mysql start
service php7.3-fpm start

./phpmyadmininstall.sh

service nginx restart
service mysql restart
service php7.3-fpm restart

tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log