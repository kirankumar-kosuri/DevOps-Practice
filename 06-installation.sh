#!/bin/bash
USERID=(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
fi

dnf install mysql -y 
if [ $? -ne 0 ]; then
    echo "Error Installing MySQL is Failure"
else   
    echo "Installing MySQL is Success"
fi