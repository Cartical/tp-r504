#!/usr/bin/bash

groupadd t_users
for f in $(cat liste1.txt);
do 
	adduser --disabled-password --gecos "" $f;
	usermod -a -G t_users $f;
done