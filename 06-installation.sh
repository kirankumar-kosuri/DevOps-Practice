#!/bin/bash

# USERID=$(id -u)
# if [ $USERID -ne 0 ]; then
#     echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
#     exit 1
# fi

# dnf install mysql -y 
# if [ $? -ne 0 ]; then
#     echo "Error Installing MySQL is Failure"
#     exit 1
# else   
#     echo "Installing MySQL is Success"
# fi

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

VALIDATE() {
    dnf install mysql -y
    if [ $1 -ne 0 ]; then
        echo "Error :: Installing $2 is failure"
        exit 1
    else
        echo "Installing mysql $2 success"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "Python3"

