#!/bin/bash

# remove old apache pid
rm -f /var/run/apache2/apache2.pid
rm -f /run/apache2/apache2.pid
apache2ctl stop

exec apache2ctl -DFOREGROUND

