FROM centos:7

RUN yum install epel-release -y

RUN yum install wget curl atop htop openssh-server openssh-clients -y

#RUN systemctl start sshd && systemctl status sshd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
