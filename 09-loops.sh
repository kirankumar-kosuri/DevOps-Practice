#!/bin/bash

# for i in {1..10}
# do
#     echo $i
# done

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT PRIVILAGE"
    exit 1
fi

VALIDATE() {
if [ $1 -ne 0 ]; then
    echo "Installing $2 is Failure"
else
    echo "Installing $2 is Success"
fi
}

for package in $@
do
    #echo "Package is : $package"
    dnf list installed $package
    if [ $? - ne 0 ]; then
        dnf install $package -y 
        VALIDATE $? "$package"
    else
        echo $package is already installed
    fi
done