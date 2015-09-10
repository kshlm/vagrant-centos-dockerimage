FROM centos:7.1.1503
MAINTAINER Kaushal M kshlmster@gmail.com

ENV container docker

ADD ./build.sh /
RUN /build.sh && rm /build.sh

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]
