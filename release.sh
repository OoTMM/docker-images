#!/bin/bash

VERSION=${GITHUB_REF#refs/tags/v}
TAGS=""
IFS='.' read -ra PARTS <<< "$VERSION"
for ((i=${#PARTS[@]}; i>0; i--)); do
    TAG=$(IFS='.'; echo "${PARTS[*]:0:$i}")
    TAGS="$TAGS -t $TAG"
done
./build.sh $TAGS --push
