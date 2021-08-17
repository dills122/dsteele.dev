#!/bin/bash

rm -rf _site/

docker run --volume=${PWD}:/srv/jekyll --volume=jekyllbundlecache:/usr/local/bundle jekyll/jekyll bash -c "jekyll build"