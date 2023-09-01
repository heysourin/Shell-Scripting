#!/bin/bash

# Define the threshold for disk space usage (in percentage)
THRESHOLD=12

# Get the current disk space usage
DISK_USAGE=$(df -H | egrep -v "Filesystem|tmpfs" | grep "nvme0n1p1" | awk '{print $5}' | tr -d %)

# Check if disk space exceeds the threshold
if [[ $DISK_USAGE -ge $THRESHOLD ]]; then
    MESSAGE="Warning, disk space is low on $(hostname)"
    echo "$MESSAGE"
    
    # Send an email notification
    echo "$MESSAGE" | mail -s "Disk Space Alert" sourin07@gmail.com
else
    echo "Disk space is good" | mail -s "Disk Space email" sourin07@gmail.com

fi

