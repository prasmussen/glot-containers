#!/bin/bash

# Ensure all languages has a files dir
ls -d */ | xargs -I {} mkdir -p {}files

# Copy runner into all files dirs
ls -d */files/ | xargs -I {} cp -v ~/runner {}
