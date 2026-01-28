#!/bin/bash
TIME_STAMP=$(date)
echo "time stamp: $TIME_STAMP"

START_TIME=$(date +%s)
echo "start time: $START_TIME"

sleep 5 &

END_TIME=$(date +%s)
echo "end time: $END_TIME"


TOTAL_TIME=$(($END_TIME - $START_TIME))

echo "Total time in seconds: $TOTAL_TIME."