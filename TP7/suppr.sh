#!/usr/bin/bash


for f in $(cat liste1.txt);
do 
	userdel $f;
done