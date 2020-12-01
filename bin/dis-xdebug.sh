#!/bin/bash
# DeActivate xdebug
set -e
docker exec -it -uroot docker_mone_web_1 rm /usr/local/etc/php/php.ini
docker restart docker_mone_web_1