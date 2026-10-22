#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "Please switch to root User..."
fi

dnf install nginx -y