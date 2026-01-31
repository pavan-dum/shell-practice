#!/bin/bash

R='\e[31m'
G='\e[32m'
Y='\e[33m'
N='\e[0m'



VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$2....$R FAILURE$N"
    else
        echo -e "$2....$G SUCCESS$N"
    fi
}



for package in "$@"
do
    dnf list installed "$package"
    if [ $? -ne 0 ]; then
        dnf install $package -y
        VALIDATE $? "$package Insatllation"
        
    else
        echo -e " Already Installed....$Y SKIPPING$N"
    fi
done