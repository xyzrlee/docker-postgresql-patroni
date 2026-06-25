#!/usr/bin/env bash

docker buildx build \
    --build-arg POSTGRES_VERSION=${POSTGRES_VERSION} \
    --build-arg PATRONI_VERSION=${PATRONI_VERSION} \
    -t postgresql-patroni \
    .
