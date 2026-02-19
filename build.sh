#!/bin/bash

# Parse args
TAGS="latest"
PUSH=false
IMAGES=""

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -t) TAGS="$TAGS $2"; shift ;;
        --push) PUSH=true ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

function build_image() {
    local dir=$1
    local args=""
    for tag in $TAGS; do
        local img="ghcr.io/ootmm/toolchain:$tag"
        args="$args -t $img"
        IMAGES="$IMAGES $img"
    done
    docker build $args $dir
}

build_image toolchain

if [ "$PUSH" = true ]; then
    for img in $IMAGES; do
        docker push $img
    done
fi
