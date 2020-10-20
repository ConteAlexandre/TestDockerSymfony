#!/bin/bash -x
composer install
./bin/console cache:clear
php-fpm -F
