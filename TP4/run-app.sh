#!/usr/bin/bash
set -x
#lancement de l'image im-tp4
docker run -d \
	-p 5000:5000 \
	--network net-tp4 \
	--name tp4-app \
	im-tp4