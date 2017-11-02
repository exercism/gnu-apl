FROM ubuntu:xenial
LABEL maintainer="marnen@marnen.org"

RUN apt-get update && apt-get install -y g++ build-essential

ARG apl_dir
ARG base_dir=/gnu-apl
WORKDIR ${base_dir}
ADD . ${base_dir}

WORKDIR ${apl_dir}
RUN ./configure --prefix /usr
RUN make
RUN make install

WORKDIR ${base_dir}
RUN rm -r ${apl_dir}

ADD .travis/.gnu-apl /etc/gnu-apl.d