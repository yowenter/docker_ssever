FROM python:2.7.8

RUN pip install pip install shadowsocks

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app


CMD ["./run.sh"]
