#!/bin/sh
set -e

# hive --service metastore --hiveconf hive.root.logger=DEBUG,console

nohup hive --service metastore 2>&1 >> /var/lib/hive/logs/metastore.log &
