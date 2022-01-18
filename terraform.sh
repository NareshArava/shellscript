#!/bin/bash
for ver in $(cat version)
do
#PACKAGE=$(echo "https://releases.hashicorp.com/terraform/1.1.2/terraform_1.1.2_linux_amd64.zip" | sed 's/1.1.2/'"$ver"'/g') 
#wget $PACKAGE
wget https://releases.hashicorp.com/terraform/${ver}/terraform_${ver}_linux_amd64.zip
sleep 5
ls -la | grep -i terraform*
done
