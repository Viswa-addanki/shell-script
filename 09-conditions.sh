#!/bin/bash

Number=$1
conds=$2

if [ $Number -gt $conds ]
then
        echo "given number $Number is greater than 10"
else
        echo "given number $Number is less than 10"
fi