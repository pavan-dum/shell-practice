#!/bin/bash

UUID=$(id -u)
LOGS_FOLDER="/var/log/sample-logs"
LOGS_FILE=$LOGS_FOLDER/$0.log

R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'

if [ $UUID -ne 0 ]; then
    echo "Please get ROOT ACCESS to execute."
    exit 1
fi

mkdir -p $LOGS_FOLDER


VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2....$R FAILURE$N" | tee -a $LOGS_FILE
    else
        echo -e "$2....$G SUCCESS$N" | tee -a $LOGS_FILE
    fi
}



for package in "$@"
do
    dnf list installed "$package" &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE $? "$package Insatllation"
        
    else
        echo -e " Already Installed....$Y SKIPPING$N" | tee -a $LOGS_FILE
    fi
done