#!/bin/bash 
 
function saisirUser { 
    echo "Saisir l'utilisateur"
    read -r users 
} 
 
function verifUser { 
    if grep "^$users:" /etc/passwd > /dev/null; then 
        echo "L'utilisateur existe" 
    else 
        echo "L'utilisateur n'existe pas"
    fi 
} 

PS3='Selctionner : '
options=(
"1 - Vérifier l'existence d'un utilisateur" 
"2 - Connaître l'UID d'un utilisateur" 
"3 - Quitter")
select choix in "${options[@]}"
do
    case $choix in
        "1 - Vérifier l'existence d'un utilisateur")
            saisirUser 
            verifUser ;;
        "2 - Connaître l'UID d'un utilisateur")
            saisirUser 
            id $users ;;
        "3 - Quitter")
            echo "Au revoir"
            break ;;
        *) echo "invalid option $REPLY";;
    esac 
done