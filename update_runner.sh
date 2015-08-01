#!/bin/bash
shopt -s globstar


for x in **/Dockerfile; do
    dst="$(dirname $x)/files"

    # Ensure that files dir exists
    mkdir -p $dst

    # Copy runner into files dir
    cp -v ~/runner $dst
done
