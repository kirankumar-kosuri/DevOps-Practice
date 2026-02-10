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

dnf remove mysql -y
if [ $? -ne 0 ]; then
    echo "Error :: Installing mysql is failure"
    #exit 1
else
    echo "Installing mysql is success"
fi


dnf remove nginx -y
if [ $? -ne 0 ]; then
    echo "Error :: Installing nginx is failure"
    #exit 1
else
    echo "Installing nginx is success"
fi


dnf remove python3 -y
if [ $? -ne 0 ]; then
    echo "Error :: Installing python3 is failure"
    #exit 1
else
    echo "Intalling python3 is success"
fi


