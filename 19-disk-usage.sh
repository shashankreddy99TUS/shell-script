#!/bin/bash


DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects will monitor for 70
MSG=""

while read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $6F}' |cut -d "%" -fi)
  PARTITION=$(echo $line | awk -F " " '{print $NF}')
  #echo "Partition: $PARTITION , Usage: $USAGE"
  if[ $USAGE -ge $DISK_THRESHOLD ]
  then 
     MSG="High Desk usage on partition: $PARTITION Usage is: $USAGE"
    fi 

done <<< $DISK_USAGE  