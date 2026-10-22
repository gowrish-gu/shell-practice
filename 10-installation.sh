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

