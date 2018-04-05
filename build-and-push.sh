#!/usr/bin/env bash

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

docker build -t digitalcanvasdesign/nginx-ssl:$1-alpine alpine/
docker push digitalcanvasdesign/nginx-ssl:$1-alpine
docker build -t digitalcanvasdesign/nginx-ssl:$1 debian/
docker push digitalcanvasdesign/nginx-ssl:$1
docker build -t digitalcanvasdesign/nginx-ssl:latest debian/
docker push digitalcanvasdesign/nginx-ssl:latest
