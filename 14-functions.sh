#!/bin/bash

func () {
    sudo dnf install $1 -y
    if [ $? -ne 0 ]; then
        echo "$1 Installation.....FAILURE"
    else
        echo "$1 Installation.....SUCCESS"
    fi
}


func nginx
func mysql