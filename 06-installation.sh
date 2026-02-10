# #!/bin/bash
# USERID=$(id -u)
# if [ $USERID -ne 0 ]; then
#     echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
#     exit 1
# fi
# #########################################

# dnf install mysql -y
# if [ $? -ne 0 ]; then
#     echo "Installing Mysql is Failure"
#     exit 1
# else
#     echo "Installing Mysql is Success"
# fi  

# #########################################

# dnf install nginx -y
# if [ $? -ne 0 ]; then
#     echo "Installing Nginx is Failure"
# else
#     echo "Installing Nginx is Success"
# fi

# #########################################

# dnf install python3 -y
# if [ $? -ne 0 ]; then
#     echo "Installing Python3 is Failure"
# else
#     echo "Installing Python3 is Success"
# fi

# #########################################
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

dnf install mysql -y
VALIDATE $? "Mysql"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "Python3"
