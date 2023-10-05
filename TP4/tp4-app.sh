#!/usr/bin/bash
set -x
#lancement serveur sql
docker exec -d im-tp4 \
	--name tp4-app \
	--network net-tp4 \