#!/bin/bash

# for i in {0..100}
# do
#     echo "num:$i"
# done

UUID=$(id -u)
LOGS_FOLDER="/var/log/sample-logs"
LOGS_FILE=$LOGS_FOLDER/$0.log

if [ $UUID -ne 0 ]; then
    echo "Please get ROOT ACCESS to execute."
    exit 1
fi

mkdir -p $LOGS_FOLDER

validate (){
    if [$1 -ne 0 ]; then
        echo "$2....FAILURE" | tee -a $LOGS_FILE
    else
        echo "$2....SUCCESS" | tee -a $LOGS_FILE
    fi
}
for package in "$@"
do
   dnf install $package -y &>> $LOGS_FILE
   validate $? "$pacakage Installation"

done