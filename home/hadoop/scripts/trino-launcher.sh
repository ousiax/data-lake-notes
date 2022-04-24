# #!/bin/sh
#
# https://trino.io/docs/current/admin/properties.html
#
# $ ./trino-server-378/bin/launcher --help
# Usage: launcher [options] command
# 
# Commands: run, start, stop, restart, kill, status
# 
# Options:
#   -h, --help            show this help message and exit
#   -v, --verbose         Run verbosely
#   --etc-dir=DIR         Defaults to INSTALL_PATH/etc
#   --launcher-config=FILE
#                         Defaults to INSTALL_PATH/bin/launcher.properties
#   --node-config=FILE    Defaults to ETC_DIR/node.properties
#   --jvm-config=FILE     Defaults to ETC_DIR/jvm.config
#   --config=FILE         Defaults to ETC_DIR/config.properties
#   --log-levels-file=FILE
#                         Defaults to ETC_DIR/log.properties
#   --data-dir=DIR        Defaults to INSTALL_PATH
#   --pid-file=FILE       Defaults to DATA_DIR/var/run/launcher.pid
#   --launcher-log-file=FILE
#                         Defaults to DATA_DIR/var/log/launcher.log (only in
#                         daemon mode)
#   --server-log-file=FILE
#                         Defaults to DATA_DIR/var/log/server.log (only in
#                         daemon mode)
#   -J OPT                Set a JVM option
#   -D NAME=VALUE         Set a Java system property

JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
PATH=$JAVA_HOME/bin:$PATH

TRINO_HOME=$HOME/.local/trino-server-378
$TRINO_HOME/bin/launcher \
    --etc-dir=$HOME/.local/etc/trino \
    $@
