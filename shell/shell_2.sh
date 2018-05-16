#!/bin/bash
ping -c 3 -i 0.2 -W 3 $1 &>/dev/null
if [ $? -eq 0 ]  # if与后面的判断语句之间要有空格
then
echo "Host $1 is up!"
else
echo "Host $1 is down!"
fi
