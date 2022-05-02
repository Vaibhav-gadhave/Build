FROM centos:7

RUN yum install epel-release -y

RUN yum clean all && yum list all

RUN yum install wget curl atop htop openssh-server openssh-clients -y

RUN systemctl start sshd && systemctl status sshd
