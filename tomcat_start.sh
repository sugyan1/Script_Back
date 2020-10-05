#!/bin/sh
START=`netstat -tupln | grep 8080 | awk '{print $6}'`
if [ "$START" = "LISTEN" ]; then
echo "tomcat is already Running"
service tomcat stop 
sleep 10
cd /usr/share/tomcat/webapps/

echo "Enter the Wget URL Please"
read p
wget $p
sleep 10
service tomcat start
echo"Tomcat Started"
echo "Sucessfully Deployed"

#check weather tomcat started or not
elif [	"$START" = "" ]; then
service tomcat start 
echo "tomcat started"
fi

#Check multiple port running on tomcat or not
RESULT=`netstat -tupln | grep 8080 | awk '{print $6}' | wc -l`

if [ "$RESULT" -lt  2 ]; then 
echo "TOMCAT Listen more than 1 port"

elif [ "$RESULT" = 0 ]; then

echo "TOMCAT Not listen any port"
service tomcart start
fi 


