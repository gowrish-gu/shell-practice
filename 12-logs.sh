#!/bin/bash


USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USER_ID -ne 0 ]; then
    echo "Please run this script with root user..."
    exit 1
fi

mkdir -p $LOGS_FOLDER

install_package() {
    if [ $1 -ne 0 ]; then
        echo "$2 is failure....!"
        exit 1
    else
        echo "$2 is Sucessfully....!"
    fi
}


dnf install nginx -y &>> $LOGS_FILE
install_package $? "Installing nginx"

dnf install mysql -y &>> $LOGS_FILE
install_package $? "Installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
install_package $? "Installing nodejs"




