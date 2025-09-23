#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m" # Here 0m represents restting the colour to none.

USERID=$(id -u) # getting the user id and copying to variable.

if [ $USERID -ne 0 ]; then
    echo "ERROR:: You donot have sudo permissions, please install with sudo permissions"
    exit 1 # Telling the script to stop here and dont go further 
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR:: Installation of $2 is failed $N"
        exit 1
    else
        echo "Installation of $2 is $G successful $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo -e " $Y Mysql is already exists $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "NGINX"
else
    echo -e  "$Y NGINX is already exists $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "PYTHON3"
else
    echo  -e "$Y Python is already exists $N"
fi

