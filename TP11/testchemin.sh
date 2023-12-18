#!/usr/bin/bash
set +x
IFS="/"; read -a tab <<<$1
echo "tout=${tab[@]}"
echo "nb=${#tab[@]}"

for (( i=1; i<${#tab[@]}; i++ ))
do
	chem=$chem"/"${tab[i]}
	#echo "i=$i chem=$chem"
	if [ -e "$chem" ]; then
		echo "Le chemin $chem existe"
	else
		echo "Chemin invalide"
	fi
done