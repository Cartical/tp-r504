#!/usr/bin/bash

function creation {
	v_nom=$1
	v_passwd=$2
	echo "création de l'utilisateur $v_nom : "
	v_passwd=$(pwgen -1)
	echo "nom=$v_nom passwd=$v_passwd "
	adduser --disabled-password --gecos "" $v_nom;
	echo $v_nom:$v_passwd | chpasswd
}
while IFS=";" read v_nom v_passwd
do
	creation $v_nom $v_passwd

done < liste3.txt
