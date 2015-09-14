FROM python:2.7.8


RUN pip install shadowsocks
RUN pip install  python–m2crypto

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app


CMD ["./run.sh"]
