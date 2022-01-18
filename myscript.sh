#!/bin/bash
echo "Running the scrpt now..."
#I=0
I=1
#I=$@
#while true
while [ $I -lt 11 ]
do
echo "Welcome to Devops for $I time..."
sleep 1
I=$(( $I + 1 ))
done
echo "now  is now $I"
BUKS=$(aws s3 ls | grep -i dev* | cut -d " " -f 3)
echo $BUKS
echo $A
