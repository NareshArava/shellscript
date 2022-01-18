#!/bin/bash
#read -p "Please enter the virtual machne names(MAX 3 only)" NUMS
#echo $NUMS
if [ $# -gt 3 ]
then
echo "you have entred more then $#, but you have to  enter  3"
else
echo "you entred $#"
echo $0
echo $1
echo $2
echo $3
echo "your name is $1  and your located to $2  and your D)B is $3"
fi

useradd -m $1
if [ $? -eq 0 ]
then 
echo "user $4 succesfully created"
else
echo "$1 already exsts.."
fi
