FROM ubuntu:xenial
MAINTAINER marnen@marnen.org

ARG apl_version=1.6
ENV APL_VERSION ${apl_version}
WORKDIR /gnu-apl
ADD . /gnu-apl
COPY .travis/.gnu-apl ~
RUN . .travis/installer
RUN install_apl
RUN bin/fetch-configlet