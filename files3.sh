#!/bin/bash
if [ -f ./nanoo.sh ]
then
echo "file present.."
echo $(date) >> vm.sh
else
echo "file not present..."
fi
