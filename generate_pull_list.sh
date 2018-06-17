#!/bin/bash
shopt -s globstar
set -e

for dockerfile in **/Dockerfile; do
    tagPath=$(dirname "$dockerfile")
    imagePath=$(dirname "$tagPath")
    tag=$(basename "$tagPath")
    image=$(basename "$imagePath")
    imageName="glot/${image}:${tag}"

    echo "docker pull $imageName"
done
