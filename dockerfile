FROM centos:7

RUN yum install epel-release -y

RUN yum install wget curl atop htop openssh-server openssh-clients sudo telnet vim git ncurses-term -y

RUN useradd vaibhavg

RUN mkdir -p /home/vaibhavg/.ssh && chown -R vaibhavg  /home/vaibhavg/.ssh/ 

# Create known_hosts
RUN touch /home/vaibhavg/.ssh/known_hosts


COPY /home/vaibhavg/.ssh/* /home/vaibhavg/.ssh/
#COPY files/config          /home/vaibhavg/.ssh/
COPY /etc/pam.d/sshd      /etc/pam.d/sshd
RUN touch /home/vaibhavg/.ssh/environment
RUN chown -R vaibhavg /home/vaibhavg/.ssh
RUN chmod 400 -R  /home/vaibhavg/.ssh/*
RUN chmod 700 -R  /home/vaibhavg/.ssh/known_hosts
RUN chmod 700  /home/vaibhavg/.ssh/environment


# Enable sshd
COPY /etc/ssh/sshd_config /etc/ssh/
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa 

# Add a account into sudoers and this account doesn't need to type his password
#COPY files/sudoers /etc/
#COPY files/start.sh /root/

