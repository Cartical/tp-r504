#!/usr/bin/bash

compt1=0
compt2=0

for ((i=1; i<=500; i++));
do 
	a=$(curl http://localhost:83)
	if [ "$a"="<h1>Hello 1 </h1>" ]
	then
		((compt1++))
	fi
	a=$(curl http://localhost:83)
	if [ "$a"="<h1>Hello 2 </h1>" ]
	then
		((compt2++))
	fi
done

echo "Nb réponse nginx 1 : $compt1"
echo "Nb réponse nginx 2 : $compt2"