#!/bin/bash

# for i in {0..100}
# do
#     echo "num:$i"
# done



validate (){
    if [$1 -ne 0 ]; then
        echo "$2....FAILURE"
    else
        echo "$2....SUCCESS"
    fi
}
for package in "$@"
do
   dnf install $package -y
   validate $? "$pacakage Installation"

done