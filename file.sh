#!/bin/bash
read -p "ENTER the URL:'" URL
wget $URL
if [ $? -eq 0 ]
then 
echo "file not downloaded..."
elso
echo "file downloaded...."
fi
