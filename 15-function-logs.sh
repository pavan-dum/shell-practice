#!/bin/bash

UUID=$(id -u)
LOGS_FOLDER="/var/log/sample-logs"
LOGS_FILE=$LOGS_FOLDER/$0.log

if [ $UUID -ne 0 ]; then
    echo "Please get ROOT ACCESS to execute."
    exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE (){
     
    if [ $1 -ne 0 ]; then
        echo "$2.....FAILURE" | tee -a $LOGS_FILE
    else
        echo "$2.....SUCCESS" | tee -a $LOGS_FILE
    fi
}



dnf install nginx -y &>> $LOGS_FILE
echo $? "Installing Nginx..."

systemctl start nginx &>> $LOGS_FILE
echo $? "Starting Nginx..."

systemctl enable nginx &>> $LOGS_FILE
echo $? "Enabling Nginx..."