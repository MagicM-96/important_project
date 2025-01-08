#!/bin/bash

activityCount=$((2 + $RANDOM % 24))
echo "Creating activities: $activityCount"
sleep "$((13 + ($RANDOM % 10) * 3))"m

for i in $(seq 1 $activityCount);
do
	sleep $(($i*5))
	str="`date +%F` - $i"
	echo $str > data/activity_created.txt
	git add *
	message=`shuf -n 1 data/messages.txt`
	git commit -m "$message"
	git push
	sleep "$((3 + ($RANDOM % 10) * 3))"m
done


