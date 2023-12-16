#!/bin/bash

copy_path="$1" || "/var/www/html/dsteele.dev/"

# Build and deploy the jekyll site assets
docker build -t jekyll-builder:latest -f JekyllDockerfile .

docker create -ti --name dummy jekyll-builder:latest bash
docker cp dummy:/tmp/_site/. $copy_path
docker rm -f dummy
