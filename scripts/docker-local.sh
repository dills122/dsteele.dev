#!/bin/bash

docker run --volume=${PWD}:/srv/jekyll --volume=jekyllbundlecache:/usr/local/bundle -p 4000:4000 jekyll/jekyll jekyll serve