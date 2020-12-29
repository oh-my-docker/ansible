FROM python:3.7.9-alpine3.12

LABEL maintainer="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk add --no-cache gcc libressl-dev musl-dev libffi-dev openssh-client openssl-dev python3-dev alpine-sdk autoconf automake libtool&& \
    pip install --upgrade pip && \
    pip install --no-cache-dir ansible==2.8.18 ansible-lint pycrypto&& \
    apk del gcc libressl-dev musl-dev libffi-dev openssl-dev python3-dev alpine-sdk autoconf automake libtool

WORKDIR /app

VOLUME ["/app"]

CMD []
