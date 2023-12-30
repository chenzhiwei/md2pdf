#!/bin/bash

PROJECT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)

podman run --rm -v ${PROJECT_DIR}:/md2pdf -w /md2pdf -e NPM_REGISTRY=https://registry.npmmirror.com docker.io/library/node:16 npm install

podman run --rm -v ${PROJECT_DIR}:/md2pdf -w /md2pdf docker.io/library/node:16 npm run build
