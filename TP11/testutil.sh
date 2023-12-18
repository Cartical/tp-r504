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

function conf { 
    echo "Appuyez sur ENTER pour continuer" 
    read
}

nb=1 
while [ "$nb" -eq 1 ]; do 
    clear 
    printf "Selectionner :\n\n" 
    echo "1 - Vérifier l'existence d'un utilisateur" 
    echo "2 - Connaître l'UID d'un utilisateur" 
    echo -e "3 - Quitter" 
    read -r choix 
    case "$choix" in 
        1) 
            saisirUser 
            verifUser 
            conf ;;
 
        2)     
            saisirUser 
            id $users
            conf ;;
 
        3) 
            echo "Au revoir"  
            nb=0 ;;
        *) 
            echo "Erreur" 
            conf ;;
    esac 
done