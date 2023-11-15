#!/usr/bin/bash

docker build -t im-nginx-lb -f Dockerfile .

mkdir -p shared1 shared2
echo "<h1>Hello 1 </h1>" > shared1/index.html
echo "<h1>Hello 2 </h1>" > shared2/index.html

set -x
#lancement serveur nginx1
docker run -d \
	-p 81:80 \
	--mount type=bind,source=$(pwd)/shared1,target=/usr/share/nginx/html \
	--name nginx1 \
	nginx:latest

#lancement serveur nginx2
docker run -d \
	-p 82:80 \
	--mount type=bind,source=$(pwd)/shared2,target=/usr/share/nginx/html \
	--name nginx2 \
	nginx:latest

#lancement serveur nginxlb
docker run -d \
	-p 83:80 \
	--name nginxlb \
	im-nginx-lb