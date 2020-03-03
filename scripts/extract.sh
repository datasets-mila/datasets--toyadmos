#!/bin/bash

# this script is meant to be used with 'datalad run'

pip install -r scripts/requirements_extract.txt
ERR=$?
if [ $ERR -ne 0 ]; then
   echo "Failed to install requirements: pip install: $ERR"
   exit $ERR
fi

jug status -- scripts/extract.py "./*.7z" --output "./"
jug execute -- scripts/extract.py "./*.7z" --output "./" &>> extract.out

rm files_count.stats
for dir in ToyCar/* ToyConveyor/* ToyTrain/*
do
	echo $(find $dir -type f | wc -l; echo $dir) >> files_count.stats
done

du -s ToyCar/* ToyConveyor/* ToyTrain/* > disk_usage.stats
