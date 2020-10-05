#!/bin/sh
TODAY=`date +%Y-%m-%d`
CURTIME=`date +%H:%M:%S`

#go to that directory
cd /usr/share/tomcat/logs

#Take Backup old data excudeing today log
targetDate=$TODAY
count=1
while [ $count -lt 30 ]
do
now="$(date -d "${targetDate} - ${count} days" +'%Y-%m-%d')"
log=catalina.$now.log

#Current Date backup log 
TODAY=`date +%Y-%m-%d`
TODAY_NEW=catalina.$TODAY.log

scp $TODAY_NEW centos@172.31.41.178:~/log/new/
scp $log centos@172.31.41.178:~/log/old_back

count=`expr $count + 1`
done
echo "Sucessfully Copied the Source and Destination Source"
