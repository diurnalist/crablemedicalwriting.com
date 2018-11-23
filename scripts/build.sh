#!/usr/bin/env bash
set -e -u -o pipefail

docker run --rm -it \
  --volume "$PWD:/srv/jekyll" \
  --volume "$PWD/_site:/dest" \
  jekyll/minimal:3.8 \
  jekyll build --destination /dest "$@"
