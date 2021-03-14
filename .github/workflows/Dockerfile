FROM debian:buster
LABEL maintainer="Xiao Sun <demerzelsun@gmail.com>"

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -f -y --no-install-recommends ca-certificates curl fontconfig make perl zip &&\
    update-ca-certificates &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/*

COPY ./install-texlive.sh /sources/
COPY ./install-packages.sh /sources/
COPY ./texlive.profile /sources/
RUN /sources/install-texlive.sh
RUN /sources/install-packages.sh

ENV PATH="/opt/texlive/bin/x86_64-linux:${PATH}"
CMD /bin/bash
