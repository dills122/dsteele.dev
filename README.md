# Website and Blog

Home of my website and blog.

## Running Locally

You'll need docker for this setup to avoid having to install and setup the ruby and Jekyll dependencies.

```bash
docker-compose up "site"
```

This will build and serve the site to `localhost:4000`

## Build Project

```bash
docker-compose up "build"
```

once its done building, the final project will be in the `_site/` directory.
