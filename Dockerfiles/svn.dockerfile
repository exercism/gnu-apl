FROM ubuntu:xenial
MAINTAINER marnen@marnen.org

ARG apl_dir
WORKDIR /gnu-apl
ADD . /gnu-apl

RUN pushd ${apl_dir}
RUN ./configure
RUN make
RUN make install
RUN popd
RUN rm -r ${apl_dir}