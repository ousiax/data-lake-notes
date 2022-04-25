#!/bin/sh
set -e

# hive --service hiveserver2 --hiveconf hive.server2.thrift.port=10000 --hiveconf hive.root.logger=DEBUG,console
nohup hive --service hiveserver2 2>&1 >> /var/lib/hive/logs/hs2.log &
