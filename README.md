# Website and Blog

Home of my website and blog.

## Running Locally

You'll need docker for this setup to avoid having to install and setup the ruby and Jekyll dependencies.

```bash
docker run --volume=${PWD}:/srv/jekyll --volume=jekyllbundlecache:/usr/local/bundle -p 4000:4000 jekyll/jekyll jekyll serve
```

This will build and serve the site to `localhost:4000`

## Build Project

```bash
docker run --volume=${PWD}:/srv/jekyll --volume=jekyllbundlecache:/usr/local/bundle jekyll/jekyll bash -c "jekyll build"
```

once its done building, the final project will be in the `_site/` directory.
