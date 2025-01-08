#!/bin/bash

#activityCount=$((2 + $RANDOM % 24))
activityCount=2
echo "Creating activities: $activityCount"
#sleep "$((13 + ($RANDOM % 10) * 3))"m

for i in $(seq 1 $activityCount);
do
	sleep $(($i*5))
	str="`date +%F` - $i"
	echo $str > data/activity_created.txt
	git add *
	git commit -m "Create activity"
	git push
	sleep "$i"s#add long sleep here
done


