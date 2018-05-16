#!/bin/bash
HLIST=$(cat ipadds.txt)  #等效于HLIST=`cat HLIST.txt`
for IP in $HLIST
do
ping -c 3 -i 0.2 -W 3 $IP &> /dev/null
if [ $? -eq 0 ]; then
echo "Host $IP is up!"
else
echo "Host $IP is down!"
fi
done
