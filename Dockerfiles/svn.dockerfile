FROM ubuntu:xenial
MAINTAINER marnen@marnen.org

ARG apl_dir
WORKDIR /gnu-apl
ADD . /gnu-apl

WORKDIR ${apl_dir}
RUN ./configure
RUN make
RUN make install
RUN rm -r /gnu-apl/${apl_dir}