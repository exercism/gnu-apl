FROM ubuntu:xenial
MAINTAINER marnen@marnen.org

ARG apl_version=1.6
ENV APL_VERSION ${apl_version}
WORKDIR /gnu-apl
ADD . /gnu-apl
COPY .travis/.gnu-apl ~
RUN bin/install-apl
RUN bin/fetch-configlet