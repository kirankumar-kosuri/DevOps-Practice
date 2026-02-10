#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Error :: Please Run This Script With Root Privilage"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo " MySQL already exist ... $Y SKIPPING $N"

dnf listed installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo "Nginx already exist ... $Y SKIPPING $N"

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y 
    VALIDATE $? "Python3"
else
    echo "Python3 already exist ... $Y SKIPPING $N"
fi

