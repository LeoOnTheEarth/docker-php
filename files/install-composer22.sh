#!/bin/sh

wget -O /usr/local/bin/composer22 https://getcomposer.org/download/latest-2.2.x/composer.phar

RESULT=$?

chmod +x /usr/local/bin/composer22

exit $RESULT
