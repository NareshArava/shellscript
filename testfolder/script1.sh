#!/bin/bash
I=0
while [ $I -lt 11 ]
do
date > file$I
aws s3 cp file$I  s3://devops2468
echo "Uploaded file$I"
sleep 1
I=$(( $I + 1 ))
done
