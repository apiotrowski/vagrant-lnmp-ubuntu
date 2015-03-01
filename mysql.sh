#!/bin/sh
echo "Install mysql server"
apt-get install mysql-server -q -y > /dev/null

echo "Install mysql client"
apt-get install mysql-client -q -y > /dev/null

echo "Setup my.cnf"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf

echo "Restart mysql server"
service mysql restart

#echo "Set password for mysql root user"
#/usr/sbin/mysqld --skip-grant-tables --skip-networking &

#service mysql start
#mysqladmin flush-privileges -u root password 123

#echo "Install PhpMyadmin"
#apt-get install phpmyadmin -y > /dev/null


