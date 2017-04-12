#!/bin/bash
shopt -s globstar
set -e

for dockerfile in **/Dockerfile; do
    tagDir="$(dirname "$dockerfile")"
    imageDir="$(dirname "$tagDir")"
    tag="$(basename "$tagDir")"
    image="$(basename "$imageDir")"
    imageName="$(echo "$image" "$tag" | awk '{print "glot/" $1 ":" $2}')"

    # Build image
    (
        cd "$tagDir"
        docker build --no-cache -t "$imageName" .
    )
done
