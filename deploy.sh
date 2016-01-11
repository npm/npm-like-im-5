#!/bin/bash

set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

cd _book

git init
git config user.name "Ashley Williams"
git config user.email "ashley666ashley@gmail.com"

git remote add upstream "https://$GH_TOKEN@github.com/npm/npm-like-im-5.git"
git fetch upstream
git reset upstream/gh-pages

touch .

git add -A .
git commit -m "rebuild pages at ${rev}"
git push -q upstream HEAD:gh-pages
