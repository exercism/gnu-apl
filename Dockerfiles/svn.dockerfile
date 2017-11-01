FROM ubuntu:xenial

ARG apl_dir

RUN apt-get install -y g++

WORKDIR /gnu-apl
ADD . /gnu-apl

WORKDIR ${apl_dir}
RUN ./configure
RUN make
RUN make install
RUN rm -r /gnu-apl/${apl_dir}