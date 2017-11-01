FROM ubuntu:xenial
LABEL maintainer="marnen@marnen.org"

RUN apt-get update && apt-get install -y g++ build-essential

ARG apl_dir
WORKDIR /gnu-apl
ADD . /gnu-apl

WORKDIR ${apl_dir}
RUN ./configure
RUN make
RUN make install
RUN rm -r /gnu-apl/${apl_dir}