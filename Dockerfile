FROM centos:7.1.1503
MAINTAINER Kaushal M kshlmster@gmail.com

ADD ./build.sh /
RUN /build.sh && rm /build.sh

CMD ["/usr/sbin/sshd", "-D"]
