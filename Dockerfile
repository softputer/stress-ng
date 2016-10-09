FROM ubuntu:trusty
MAINTAINER Jayson Ge <gyj3023@foxmail.com>

COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y stress-ng

CMD ["stress-ng", "-c", "1", "-l", "50"]
