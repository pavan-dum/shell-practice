#!/bin/bash

func(){
    if [ $? -ne 0]; then
        echo "Nginx Installation.....FAILURE"
    else
        echo "Nginx Installation.....SUCCESS"
}

dnf install nginx -y
func $?