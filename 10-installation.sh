#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script with root user..."
    exit 1
fi

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx is failure....!"
    exit 1
else
    echo "Installed nginx Sucessfully....!"
fi


echo "Installing mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing mysql is failure...!"
    exit 1
else
    echo "Installed mysql sucessfully...!"   
fi

echo "Installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs is failure...!"
    exit 0
else
    echo "Installed nodejs sucessfully...!"

