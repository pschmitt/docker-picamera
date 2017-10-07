FROM resin/raspberry-pi-python:3

LABEL maintainer "Philipp Schmitt <philipp@schmitt.co>"

RUN READTHEDOCS=True pip install picamera

COPY web_streaming.py /web_streaming.py

ENV AUTH_USERNAME=pi AUTH_PASSWORD=picamera RESOLUTION=800x600 FRAMERATE=24

ENTRYPOINT ["/usr/local/bin/python", "/web_streaming.py"]
