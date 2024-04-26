#!/bin/bash

Number=$1
conds=$2

if [ $Number -gt $conds ]
then
        echo "given number $Number is greater than $conds"
else
        echo "given number $Number is less than $conds"
fi