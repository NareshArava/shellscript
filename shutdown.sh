#!/bin/bash
#VM=$@
#echo $VM
#echo $@
#echo "=========="
#echo $*
#for i in $@
#do
#echo "shutting down $i"
#done

for VOL in $@
do
echo "Creating the vlome ..."
#aws ec2 create-volume --volume-type gp2  --size $VOL  --availability-zone us-east-1a --tag-specifications 'ResourceType=volume,Tags=[{Key=name,Value=PRODVOL}]'
aws ec2 create-volume --volume-type gp2  --size $VOL  --availability-zone us-east-1a --tag-specifications 'ResourceType=volume,Tags=[{Key=name,Value=$VOL}]'
#aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone us-east-1a --tag-specifications 'ResourceType=volume,Tags=[{Key=name,Value=PRODVOL}]'
#aws ec2 create-volume --volume-type gp2  --size 1  --availability-zone us-east-1a
done
