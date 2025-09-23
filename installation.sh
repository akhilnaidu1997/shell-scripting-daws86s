#!/bin/bash

USERID=$(id -u) # getting the user id and copying to variable.

if [ $USERID -ne 0 ]; then
    echo "ERROR:: You donot have sudo permissions, please install with sudo permissions"
    exit 1 # Telling the script to stop here and dont go further 
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installation of mysql is failure"
    exit 1
else
    echo "Installation of mysql is sucessful"
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo " Installation of nginx is failed"
    exit 1
else
    echo " Installation of nginx is successful"
fi

dnf install mongodb-mongosh -y
if [ $? -ne 0 ]; then
    echo " Installation of mongosh is failed"
else
    echo " Installation of mongosh is successful"
fi
