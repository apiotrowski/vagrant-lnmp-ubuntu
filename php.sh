#!/bin/sh
echo "Installing PHP"
apt-get install php5-common php5-dev php5-cli php5-fpm -q -y > /dev/null

echo "Installing PHP extensions"
apt-get install php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcached php5-ming php5-ps php5-pspell php5-recode php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-xcache -q -y > /dev/null

echo "PHP Configuration"
sed -i "s/upload_max_filesize = 2M/upload_max_filesize = 10M/" /etc/php5/fpm/php.ini
sed -i "s/short_open_tag = On/short_open_tag = Off/" /etc/php5/fpm/php.ini
sed -i "s/;date.timezone =/date.timezone = Europe\/Warsaw/" /etc/php5/fpm/php.ini
sed -i "s/memory_limit = 128M/memory_limit = 512M/" /etc/php5/fpm/php.ini
sed -i "s/_errors = Off/_errors = On/" /etc/php5/fpm/php.ini

echo "Installing composer"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer.phar
alias composer="/usr/local/bin/composer.phar"

