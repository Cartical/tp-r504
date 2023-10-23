#!/usr/bin/bash

while IFS=";" read v_nom v_passwd
do
	v_passwd=$(pwgen 8 1)
	echo "nom=$v_nom passwd=$v_passwd "
	adduser --disabled-password --gecos "" $v_nom;
	echo $v_nom:$v_passwd | chpasswd

done < liste3.txt
