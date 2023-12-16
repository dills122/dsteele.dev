#!/bin/bash
DEFAULTVALUE="/var/www/html/dsteele.dev"
copy_path="${1:-$DEFAULTVALUE}"

# Build and deploy the jekyll site assets
docker build -t jekyll-builder:latest -f JekyllDockerfile .

docker create -ti --name dummy jekyll-builder:latest bash
sudo docker cp dummy:/tmp/_site/. $copy_path
docker rm -f dummy
