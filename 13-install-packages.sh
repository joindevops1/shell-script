#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/TMP/$0-$TIMESTAMP.LOG"

echo "script stareted executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$2...$R FAILED $N"
    else
        echo -e "$2...$G SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

#echo "All arguments passed: $@"
# git mysql postfix net-tools
# package=git for first time

for package in $@
do
   yum list installed $package &>> $LOGFILE #check installed are not
   if [ $? -ne 0 ] #if not installed
   then
       yum install $package -y &>> $LOGFILE # installed package
       VALIDATE $? "installation of $package" # validate
    else
        echo -e "$package is allready installed ... $Y SKIPPING $N"
    fi
done    


 