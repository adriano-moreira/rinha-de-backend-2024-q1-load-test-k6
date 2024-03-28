#!/usr/bin/env bash

set -ex

docker run --name k6 \
    --network host \
    --rm -it \
    -e K6_WEB_DASHBOARD=true \
    --user ${UID}:12345 \
    -v ${PWD}:/app \
    -w /app \
    grafana/k6:0.50.0 "$@"
