#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "INSTALLING MYSQL IS FAILURE"
else
    echo "INSTALLING MYSQL IS SUCCESS"
fi  

