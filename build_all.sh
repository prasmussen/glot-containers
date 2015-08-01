#!/bin/bash

# Pull latest dependencies
cat */Dockerfile | grep "^FROM" | sed -e 's/^FROM //' | sort | uniq | xargs -I {} docker pull {}

# Run build scripts
for x in */build.sh; do
    dir=$(dirname $x)
    script=$(basename $x)
    cd $dir
    ./$script
    cd -
done
