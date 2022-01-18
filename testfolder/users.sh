#!/bin/bash
read -p "please enter the username:" USER
useradd -m $USER
cat /etc/passwd | grep -i $USER
