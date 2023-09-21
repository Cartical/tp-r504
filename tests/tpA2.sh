#!/usr/bin/bash

echo "l'user courant est $USER"

if [ $1 == " " ]
then
        echo "Ajouter un argument"
else
        echo "pass"
fi


if [ $1 == $USER ]
then
	echo "oui"
else
	echo "non"
fi
