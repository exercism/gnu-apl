FROM ubuntu:xenial
LABEL maintainer="marnen@marnen.org"

RUN apt-get update && apt-get install -y g++ build-essential

ARG apl_dir
ARG base_dir=/gnu-apl
WORKDIR ${base_dir}
ADD . ${base_dir}

WORKDIR ${apl_dir}
RUN ./configure
RUN make
RUN make install
RUN rm -r ${base_dir}/${apl_dir}

WORKDIR ${base_dir}