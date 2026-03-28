#!/bin/bash

INPUT="users.csv"
LOGFILE="user_management.log"
DEFAULT_PASSWORD="Welcome@123"

echo "===== User Management Script Started =====" >> $LOGFILE
date >> $LOGFILE

# Skip header and read file
tail -n +2 $INPUT | while IFS=',' read username group
do
    # Check if group exists
    if getent group "$group" > /dev/null 2>&1
    then
        echo "Group $group already exists" >> $LOGFILE
    else
        groupadd "$group"
        echo "Group $group created" >> $LOGFILE
    fi

    # Check if user exists
    if id "$username" &>/dev/null
    then
        echo "User $username already exists" >> $LOGFILE
    else
        useradd -m -g "$group" "$username"
        echo "$username:$DEFAULT_PASSWORD" | chpasswd
        echo "User $username created with group $group" >> $LOGFILE
    fi

done

echo "===== Script Completed =====" >> $LOGFILE