#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script with root user..."
    exit 1
fi

install_package() {
    if [ $1 -ne 0 ]; then
        echo "$2 is failure....!"
        exit 1
    else
        echo "$2 is Sucessfully....!"
    fi
}


dnf install nginx -y
install_package $? "Installing nginx"

dnf install mysql -y
install_package $? "Installing mysql"

dnf install nodejs -y
install_package $? "Installing nodejs"




