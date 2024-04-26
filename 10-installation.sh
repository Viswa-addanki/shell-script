#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
        echo "Please run the script"
else
        echo "You are a super user."
fi
dnf install mysql -y

