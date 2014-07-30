FROM centos
MAINTAINER David Michael <1.david.michael@gmail.com>

RUN yum install -y java-1.7.0-openjdk-devel java
ADD http://mirrors.jenkins-ci.org/war-stable/latest/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
