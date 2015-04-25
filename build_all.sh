#!/bin/bash

for x in */build.sh; do
    dir=$(dirname $x)
    script=$(basename $x)
    cd $dir
    ./$script
    cd -
done
