#!/bin/bash
#set -x -e
#while true 
#do
read -p "Enter the Valid user name:" USER_NAME
echo "$USER_NAME"
if [ -z "$USER_NAME" ]; then
    echo "The $USER_NAME user is not Valid user"
else
    echo "The username is $USER_NAME "
    EX_USER=$(cat /etc/passwd | cut -d ":" -f 1 | grep -w "$USER_NAME")
    if [ "$USER_NAME" == "$EX_USER" ]; then
        echo "User alreday exists. please select a different username..."
    else
        echo "Lets's craete $USER_NAME "
        SPEC=$( echo '!@#$%&^*()_' | fold -w 1 | shuf | head -n 1)
        PASSWORD="naresh@$RANDOM$SPEC"
        echo $PASSWORD
        # read -s -p "Enter the password:" PASSWORD
        useradd -m "$USER_NAME"
        echo "$USER_NAME:$PASSWORD" | sudo chpasswd
        passwd -e "$USER_NAME"
    fi
fi
#done
