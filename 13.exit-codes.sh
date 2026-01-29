#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "get root access to download nginx."
    exit 1

fi

echo "istalling nginx server."

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "nginx install--- failure."

else
    echo "nginx install--- success."
fi
