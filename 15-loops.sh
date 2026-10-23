#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"   #seperate script names stored here

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script with root user..." | tee -a $LOGS_FILE
    exit 1
fi

mkdir -p $LOGS_FOLDER

install_package() {
    if [ $1 -ne 0 ]; then
        echo "$2 is failure....!" | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 is Sucessfully....!" | tee -a $LOGS_FILE
    fi
}

for package in $@    # sudo sh 14-loops.sh nginx mysql nodejs
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0  ]; then
        echo "$package is not installed, installing now"
        dnf install $package -y &>>$LOGS_FILE
        install_package $? "$package Installation"
    else
        echo "$package is already installed, skipping"
    fi

done





