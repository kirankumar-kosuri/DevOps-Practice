#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "ERROR :: INSTALLING MYSQL IS FAILURE"
fi  
