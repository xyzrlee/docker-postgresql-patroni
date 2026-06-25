#!/usr/bin/env bash

echo "POSTGRES_VERSION=${POSTGRES_VERSION}"
echo "PATRONI_VERSION=${PATRONI_VERSION}"

docker buildx build \
    --build-arg POSTGRES_VERSION=${POSTGRES_VERSION} \
    --build-arg PATRONI_VERSION=${PATRONI_VERSION} \
    -t postgresql-patroni \
    .
