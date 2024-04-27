#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%m-%S)
SCRIPTNAME= $ ($0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.LOG

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 ...Failure "
    exit 1
else
    echo "$2...sucess"
fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y&>>$LOGFILE

VALIDATE $? "INSTALLING MySQL"

dnf install git -y&>>$LOGFILE
VALIDATE $? "INSTALLING GIT"
