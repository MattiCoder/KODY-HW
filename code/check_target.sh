#! /usr/bin/env bash

TARGET=192.168.56.123

if [ "$1" != "" ]; then
TARGET="$1"
fi

ping $TARGET -c1 -t1 > /dev/null 2>&1 #c1 - 1 proba i t1 - jedna sekunda
res=$?

if [ "$res" == 1 ]; then
echo "Target is not reachable"
else
echo "Target is present"
fi

exit $res