#!/usr/bin/env bash

cd /patroni-bin
source venv/bin/activate

whoami

patroni $@

