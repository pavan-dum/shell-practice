#!/bin/bash
TIME_STAMP=$(date)

START_TIME=$(date +%s)
echo "start time: $START_TIME"

sleep 100 &

END_TIME=$(date +%s)
echo "end time: $END_TIME"


TOTAL_TIME = $(($END_TIME - $START_TIME))

echo "Total time in seconds: $TOTAL_TIME."