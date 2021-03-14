FROM debian:buster
LABEL maintainer="Xiao Sun <demerzelsun@gmail.com>"

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -f -y --no-install-recommends ca-certificates curl fontconfig make perl zip &&\
    update-ca-certificates &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/*

COPY install-texlive.sh install-packages.sh texlive.profile /tmp/
RUN /tmp/install-texlive.sh
RUN /tmp/install-packages.sh

ENV PATH="/opt/texlive/bin/x86_64-linux:${PATH}"
CMD /bin/bash


