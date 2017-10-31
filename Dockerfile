FROM ubuntu:xenial
MAINTAINER marnen@marnen.org

ARG apl_deb
WORKDIR /gnu-apl
ADD . /gnu-apl
RUN apt-get update -y
RUN dpkg -i ${apl_deb}
RUN rm ${apl_deb}
