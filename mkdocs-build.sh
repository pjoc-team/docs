#!/usr/bin/env bash
rm -fr public
sh prepare.sh
docker run --rm -v "$(pwd)":/docs -w /docs pjoc/mkdocs:v0.0.13 mkdocs build -d public
