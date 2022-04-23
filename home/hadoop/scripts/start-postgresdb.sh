#!/bin/sh
set -e

docker run \
    --name=postgresdb \
    --mount source=postgresdb,target=/var/lib/postgresql/data \
    --restart on-failure \
    -d \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=ZcGnJu+ifB+IMUFp0iQnQ6Rs2S4DhSkO \
    postgres:14

# root: ZcGnJu+ifB+IMUFp0iQnQ6Rs2S4DhSkO
