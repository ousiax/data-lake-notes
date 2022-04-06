#!/bin/sh
set -e

docker run \
    --name=hive-metastoredb \
    --mount source=hive-metastoredb,target=/var/lib/mysql \
    --restart on-failure \
    -d \
    -p 3306:3306 \
    -e MYSQL_RANDOM_ROOT_PASSWORD=yes \
    -e MYSQL_ONETIME_PASSWORD=yes \
    mysql:5

# root: ZcGnJu+ifB+IMUFp0iQnQ6Rs2S4DhSkO
