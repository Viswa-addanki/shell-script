#!/bin/bash

echo " all variables:$@"
echo "numberof variables passed:$#"
echo "script Name : $0"
echo "current working directory:$pwd"
echo "which user is running this script:$user"
echo "Hostname: $HOSTNAME"
echo "process ID of the Current Shell script: $$"
sleep 60
echo "process ID of last background command :$!"

