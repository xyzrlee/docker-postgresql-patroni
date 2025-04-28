#!/usr/bin/env bash

POSTGRES_VERSION=17.4

docker buildx build --build-arg POSTGRES_VERSION=${POSTGRES_VERSION} -t postgresql-patroni .

