#!/bin/bash

COURSE="Devops from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

#./16-otherscript.sh
source ./16-otherscript.sh

echo "After calling other script, course: $COURSE"
