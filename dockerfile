FROM centos/systemd

RUN yum install epel-release -y

RUN yum install wget curl -y

RUN curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | tee /etc/yum.repos.d/jenkins.repo

RUN rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

RUN yum install java-1.8.0-openjdk -y

RUN yum install jenkins -y

RUN wget https://github.com/jenkinsci/plugin-installation-manager-tool/releases/download/2.10.0/jenkins-plugin-manager-2.10.0.jar

COPY plugins.txt /root/.jenkins/plugins/

RUN java -jar jenkins-plugin-manager-*.jar - war /usr/lib/jenkins/jenkins.war - plugin-download-directory /root/.jenkins/plugins - plugin-file /root/.jenkins/plugins/plugins.txt \
&& yum clean all

COPY jenkins-casc.yaml /usr/local/jenkins-casc.yaml

ENV CASC_JENKINS_CONFIG /usr/local/jenkins-casc.yaml

CMD java -Djenkins.install.runSetupWizard=false -jar /usr/lib/jenkins/jenkins.war
