#!/bin/sh

nginx -g daemon off;
cd /var/www/html
cp blog-pull-cronjob /etc/cron.d/
