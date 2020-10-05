#!/bin/sh
a=10
b=20
if [ $a == $b ]
then
  echo "Both Number same"
else
  echo "Number are Not same"
fi

if [ $a -lt $b ]
then 
  echo "True"
else
  echo "False"
fi

while [ $a -le 20 ]
do
echo $a
  a=`expr $a + 1`
done
