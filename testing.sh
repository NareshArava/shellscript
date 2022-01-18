#!/bin/bash
for x in $*
do
echo $x
done
echo  "========"

for x in $@
do
echo $x
done
echo  "========"
echo '"$*"'
for x in "$*"
do
echo $x
done
echo  "========"
echo '"$@"'
for x in "$@"
do
echo $x
done
echo  "========"

