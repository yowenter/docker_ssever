FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y python-pip python-m2crypto && \
    apt-get install -y python-dev

RUN pip install shadowsocks
RUN pip install gevent
RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app
EXPOSE 1080

ENV SS_PASSWORD dododo
ENV SS_METHOD rc4-md5

CMD ["sh","run.sh"]
