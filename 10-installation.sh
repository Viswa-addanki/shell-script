#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
        echo "Please run the scrip with root access"
        exit 1
else
        echo "You are a super user."
fi
dnf install mysql -y

if [ $? -ne 0 ]
then 
echo "istallation is failure"
exit 1
fi


