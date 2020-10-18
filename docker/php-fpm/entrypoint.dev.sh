#!/bin/bash -x
composer install
./bin/console cache:clear
cron
/etc/init.d/supervisor start
php-fpm7.4 -F

