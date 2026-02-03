#!/bin/bash

LOGS_DIR="/home/ec2-user/app-log"
LOGS_FILE=$LOGS_DIR/$0.log

if [ ! -d $LOGS_DIR ]; then
    echo "$LOGS_DIR does not exist"
    exit 1
fi  

files_to_delete=$( find $LOGS_DIR -name "*.log" -mtime +14)

while IFS=read -r file;
do
    echo "deleting file:$file"
    rm -f $file
    echo "deleted file: $file"
done <<< $files_to_delete