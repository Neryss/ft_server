cd /var/www/html
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.7/phpMyAdmin-4.9.7-all-languages.tar.gz
mkdir phpmyadmin
tar -xvf phpMyAdmin-4.9.7-all-languages.tar.gz --directory ./phpmyadmin > /dev/null
mv phpmyadmin/phpMyAdmin-4.9.7-all-languages/* phpmyadmin/
rm -rf phpMyAdmin-4.9.7-all-languages
rm -rf phpMyAdmin-4.9.7-all-languages.tar.gz

cd phpmyadmin
cp /srcs/config.inc.php ./
