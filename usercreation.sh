#!/bin/bash
re='^[0-9]+$'
if [ $# -gt 0 ]
then
for i in $@
do
if [[ -n $i ]] || [[ $i =~ $re ]]
then 
echo "lets create user $i"
echo "user is $i empty or invalid user name..."
else
echo "lets create user $i"
fi
done 
else
echo "no args given..."
fi

