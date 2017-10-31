FROM ubuntu:xenial
MAINTAINER marnen@marnen.org

ARG apl_deb
WORKDIR /gnu-apl
ADD . /gnu-apl
COPY .travis/.gnu-apl ~
RUN dpkg -i ${apl_deb}
RUN rm ${apl_deb}
RUN bin/fetch-configlet