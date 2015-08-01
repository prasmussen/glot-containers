#!/bin/bash
shopt -s globstar

cat **/build.sh | grep -oP "glot/[^ ]+" | xargs -I {} docker push {}
