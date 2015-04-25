#!/bin/bash

docker images | grep "^glot/" | grep latest | awk '{print $1}' | xargs -I {} docker push {}:latest
