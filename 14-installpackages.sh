#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%m-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.LOG
VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 ...Failure "
    exit 1
else
    echo "$2...sucess"
fi
}
if [$USERID -ne 0]

then 
 echo "Please run this script with root user"
 exit 1
  else
   echo "you are super user."

   fi

   for i in $@
   do 
    echo "package to install $i"
    dnf list installed $i &>>$LOGFILE
    if [$? -ne 0]
    then
    echo "$i already isntalled "
    else 
    echo "$i not installed Need to install"
     fi

    done