#!/bin/bash

USERID=$(id -u) # getting the user id and copying to variable.

if [ $USERID -ne 0 ]; then
    echo "ERROR:: You donot have sudo permissions, please install with sudo permissions"
    exit 1 
fi

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "Installation of mysql is successful"
else
    echo "Installation of mysql is failed"
fi