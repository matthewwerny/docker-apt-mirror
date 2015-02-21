FROM ubuntu:14.04.1
MAINTAINER Matthew Werny <matthewwerny+github@gmail.com>

RUN apt-get update && apt-get install -y apt-mirror && rm -rf /var/lib/apt/lists/*

ADD mirror.list /etc/apt/mirror.list

VOLUME ["/var/spool/apt-mirror"]

CMD ["/usr/bin/apt-mirror"]