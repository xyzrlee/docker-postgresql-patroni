#!/usr/bin/env bash

docker buildx build --build-arg POSTGRES_VERSION=${POSTGRES_VERSION} -t postgresql-patroni .

