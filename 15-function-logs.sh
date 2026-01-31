#!bin/bash

UUID=$(id -u)
LOGS_FOLDER="/var/log/sample-logs"
LOGS_FILE=$LOGS_FOLDER/$0.log

if [ $UUID -ne 0 ]; then
    echo "Please get ROOT ACCESS to execute."
    exit 1
fi

VALIDATE (){
     
    if [ $1 -ne 0 ]; then
        echo "$2.....FAILURE"
    else
        echo "$2.....SUCCESS"
    fi
}



dnf install nginx -y &>> $LOGS_FILE
echo $? "Installing Nginx..."

systemctl start nginx | tee -a $LOGS_FILE
echo $? "Starting Nginx..."

systemctl enable nginx | tee -a $LOGS_FILE
echo $? "Enabling Nginx..."