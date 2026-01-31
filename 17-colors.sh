#!/bin/bash

R='\e[31m'
G='\e[31m'
Y='\e[31m'



VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2....$R FAILURE"
    else:
        echo "$2....$G SUCCESS"
    fi
}



for package in "$@"
do
    dnf list installed $package
    if [ $? -ne 0]; then
        echo " Already Installed....$Y SKIPPING"
    else:
         dnf install $package -y
         VALIDATE $? "$package Insatllation"
    fi
done