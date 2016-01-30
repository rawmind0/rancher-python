FROM rawmind/rancher-base:0.0.2-1
MAINTAINER Raul Sanchez <rawmind@gmail.com>

# Install python and pip
RUN apk add --update python && rm -rf /var/cache/apk/* \
  && curl -sS -k "https://bootstrap.pypa.io/get-pip.py" -o /tmp/get-pip.py \
  && python /tmp/get-pip.py \
  && rm /tmp/get-pip.py
