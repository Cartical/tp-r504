#!/usr/bin/bash
set -x

# etape 0 suppression de tous les éléments actif.

docker stop tp4-app
docker stop tp4-sql
docker rm tp4-app
docker rm tp4-sql

docker network rm net-tp4

# etape 1
./create_network.sh
./build_image.sh

# etape 2
./run_mysql.sh

# etape 3
if [ $(./filldb.sh) !=0 ]
then 
	echo "echec du remplissage de la base de données"
	./filldb.sh
fi

# etape 4
./run-app.sh
