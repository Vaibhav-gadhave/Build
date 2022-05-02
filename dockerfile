FROM centos:7

RUN yum install epel-release -y

RUN yum install wget curl atop htop openssh-server openssh-clients -y

CMD ["ping" "8.8.8.8"]

#RUN systemctl start sshd && systemctl status sshd
