ARG POSTGRES_VERSION=latest

FROM postgres:${POSTGRES_VERSION}

RUN apt-get update \
        && apt-get install -y --no-install-recommends python3 python3-pip python3-venv \
        && apt-get clean \
        && rm -rf /var/lib/apt-lists/* \
        && mkdir -p /patroni-bin \
        && cd /patroni-bin \
        && python3 -m venv venv \
        && venv/bin/pip3 install --no-cache-dir patroni[all,psycopg3]

COPY entrypoint.sh /patroni-bin/

USER postgres

ENTRYPOINT ["/patroni-bin/entrypoint.sh"]

