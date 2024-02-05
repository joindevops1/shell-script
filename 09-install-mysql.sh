#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this script with access"
    exit 1 # you can give other than 0
else
    echo "you are root user"
fi # fi means revers of if, indicationg condition end

yum install mysql -y
