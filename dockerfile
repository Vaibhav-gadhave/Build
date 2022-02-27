
FROM ubuntu:latest
MAINTAINER Vaibhav Gadhave <vvgadhave@gmail.com>

RUN apt-get update -y
RUN apt install openjdk-8-jdk curl wget gnupg -y
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt update -y
RUN apt install jenkins -y
RUN service jenkins start
