#!/bin/bash

START_TIME=$(date +%s)  #Shell execute this command dynamically and stores in Starttime and +%s for in seconds

echo "Script executed at: $START_TIME"

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script executed in: $TOTAL_TIME"

