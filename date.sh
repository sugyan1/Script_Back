#!/bin/bash
targetDate=2020-09-01
count=1
while [ $count -lt 30 ]
do
now="$(date -d "${targetDate} - ${count} days" +'%Y-%m-%d')"
echo "$now"
count=`expr $count + 1`
done
 
