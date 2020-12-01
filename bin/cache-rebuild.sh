#!/bin/bash

set -e
docker exec -it -uroot docker_mone_web_1 rm -rf /tmp/magento/var/cache
docker exec -it docker_mone_web_1 rm -rf var/cache