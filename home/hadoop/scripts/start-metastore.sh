#!/bin/sh
set -e

nohup hive --service metastore 2>&1 >> /var/lib/hive/logs/metastore.log &
