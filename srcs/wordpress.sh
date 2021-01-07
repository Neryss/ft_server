cd /var/www/html
wget https://fr.wordpress.org/latest-fr_FR.tar.gz
tar -xvf latest-fr_FR.tar.gz > /dev/null
rm -rf latest-fr_FR.tar.gz
cp /srcs/wp-config.php ./wordpress
cd wordpress
sed -i 's/MYSQL_USER/'${MYSQL_USER}'/g' wp-config.php
sed -i 's/MYSQL_PWD/'${MYSQL_PWD}'/g' wp-config.php