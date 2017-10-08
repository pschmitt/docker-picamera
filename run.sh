#!/usr/bin/env bash

docker run -d --restart=always \
  --device /dev/vchiq \
  -p 8000:8000 \
  -e AUTH_USERNAME=pi \
  -e AUTH_PASSWORD=picamera \
  pschmitt/picamera
