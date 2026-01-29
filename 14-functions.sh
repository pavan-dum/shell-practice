#!/bin/bash

func ( $@ ) {
    dnf install $2 -y
    if [ $1 -ne 0]; then
        echo "$2 Installation.....FAILURE"
    else
        echo "$2 Installation.....SUCCESS"
}


func $? NGINX