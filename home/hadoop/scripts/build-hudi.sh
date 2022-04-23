#!/bin/sh

# https://github.com/apache/hudi#build-with-different-spark-versions
mvn clean package -DskipTests -Dspark3 -Dscala-2.12
