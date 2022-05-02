FROM centos:7

RUN yum install epel-release -y

RUN yum install wget curl atop htop openssh-server openssh-clients sudo telnet vim git ncurses-term -y

RUN         mkdir -p /var/run/sshd
RUN         ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN         ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN         /bin/echo 'root:aaaaaa'|chpasswd
RUN         useradd dys
RUN         /bin/echo 'dys:aaaaaa'|chpasswd
RUN         /bin/sed -i 's/.*session.*required.*pam_loginuid.so.*/session optional pam_loginuid.so/g' /etc/pam.d/sshd
RUN         /bin/echo -e "LANG=\"en_US.UTF-8\"">/etc/default/local
EXPOSE      22
CMD         /usr/sbin/sshd -D
