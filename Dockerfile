FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y python-pip python-m2crypto && \
    apt-get install -y python-dev

RUN pip install shadowsocks
RUN pip install gevent
RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app


CMD ["/usr/local/bin/ssserver -p 8080 -k password -m aes-256-cfb"]
