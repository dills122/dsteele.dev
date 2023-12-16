# Website and Blog

Home of my website and blog.

## Running Locally

You'll need docker for this setup to avoid having to install and setup the ruby and Jekyll dependencies.

```bash
docker compose up
```

This will build and serve the site to `localhost:4000`

## Build Project

```bash
sh build-deploy.sh ./_site/
```

once its done building, the final project will be in the `_site/` directory.

## Merging Upstream

Steps to setup and merge from the upstream repo, if already done before the remote `upstream` should already be added.

```bash
git remote add upstream https://github.com/sergiokopplin/indigo.git
git fetch upstream
git status
git merge upstream/gh-pages
git commit -m "Merge remote-tracking branch 'upstream/gh-pages'"
```
