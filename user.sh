#!/bin/bash
if [ $# -lt 5 ]
then
for i in $@
do
echo "Creating EBS volume $i"
done
else
echo "please enter the args less than $#"
fi
