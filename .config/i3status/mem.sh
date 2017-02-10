#!/bin/bash

i3status | while :
do
    read line  
    #sleep 1
    S=$(date +%S)
    ram=`awk '/MemFree/ {printf int($2/1024) " MB"}' /proc/meminfo`
    #echo "$S MEM: $ram | $line" || exit 1
    dat="[{ \"full_text\": \"${ram}\" },"
    #echo "${line/[/$dat}" || exit 1
    echo -e "${line/[/$dat}" || exit 1
done

