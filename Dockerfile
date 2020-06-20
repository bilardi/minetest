FROM debian:buster-backports

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y apt-utils systemctl wget

COPY install.sh /tmp/
ENTRYPOINT ["/tmp/install.sh"]

EXPOSE 30000
