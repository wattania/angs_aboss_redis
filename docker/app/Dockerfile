FROM centos:7.1.1503
MAINTAINER Wattana Inthaphong <wattaint@gmail.com>
# enable centos plus repo and install epel repo
RUN yum update -y \
&& yum install -y wget ruby mlocate vim tar make gcc

RUN wget http://download.redis.io/releases/redis-3.0.3.tar.gz \
&& tar -xf redis-3.0.3.tar.gz \
&& cd redis-3.0.3 \
&& make \
&& make install \
&& rm -f /redis-3.0.3.tar.gz \
&& rm -rf /redis-3.0.3

ADD redis.conf /redis.conf

ENTRYPOINT ["/usr/local/bin/redis-server", "/redis.conf"]
