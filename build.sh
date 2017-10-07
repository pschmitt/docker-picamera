#!/usr/bin/env bash

cd "$(readlink -f "$(dirname "$0")")" || exit 9

docker build -t pschmitt/picamera .
