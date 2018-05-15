#!/bin/bash
read -p "please input USERS passwd: " PASSWD
for UNAME in `cat USERS.txt`
do 
id $UNAME &> /dev/null
if [ $? -eq 0 ]; then
echo "$UNAME is already exist!"
else
useradd $UNAME &> /dev/null
echo "$PASSWD" | passwd --stdin $UNAME &> /dev/null
if [ $? -eq 0 ]; then
echo "$UNAME creast success!"
else
echo "$UNMAE creat fail!"
fi
fi
done
