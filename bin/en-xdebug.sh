#!/bin/bash
# Activate xdebug
set -e
docker cp web/php.ini docker_mone_web_1:/usr/local/etc/php
docker restart docker_mone_web_1