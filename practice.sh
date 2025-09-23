#!/bin/bash

USER=$(id -u)

if [ $USER -eq 0 ]; then
    echo "Proceed with installation"
fi

dnf install mysql -y
