#!/bin/bash

USERID=$(id -u) # getting the user id and copying to variable.

if [ $USERID -ne 0 ]; then
    echo "ERROR:: You donot have sudo permissions, please install with sudo permissions"
    exit 1 # Telling the script to stop here and dont go further 
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: Installation of $2 is failed"
        exit 1
    else
        echo "Installation of $2 is successful"
    fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "NGINX"

dnf install mongodb-mongosh -y
VALIDATE $? "MONGOSH"
