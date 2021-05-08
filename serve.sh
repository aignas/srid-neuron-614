#!/bin/bash

args=(
    -o /tmp
    gen
    --watch
    --pretty-urls
    --serve 0.0.0.0:8080
)

exec docker run \
    --rm \
    --tty \
    --interactive \
    --publish 8080:8080 \
    --volume ${PWD}:/notes \
    sridca/neuron:1.9.27.3 \
    neuron "${args[@]}"
