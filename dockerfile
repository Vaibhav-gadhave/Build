FROM centos:7

RUN yum install epel-release -y

RUN yum install wget curl atop htop openssh-server openssh-clients sudo telnet vim git ncurses-term -y

RUN useradd vaibhavg

RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

RUN ssh-keygen -A

RUN echo "vaibhavg:password" | chpasswd

RUN echo "root:centos" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]
