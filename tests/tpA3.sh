#!/usr/bin/bash

echo "Boucle FOR"

if [ "$1" = "" ]
then
        n1=5
else
	n1=$1
fi

if [ "$2" = "" ]
then
	n2=$n1+10
else
	n2=$2
fi

for i in {$n1..$n2}
do
	echo "$i"
done
