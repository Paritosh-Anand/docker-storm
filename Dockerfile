# Docker File
FROM centos:6

ENV STORM_VERSION 0.10.1 

RUN yum -y install java-1.7.0-openjdk python-setuptools

ADD http://redrockdigimark.com/apachemirror/storm/apache-storm-${STORM_VERSION}/apache-storm-${STORM_VERSION}.tar.gz /tmp

RUN  tar -zxf  /tmp/apache-storm-${STORM_VERSION}.tar.gz  -C /opt/ && mv /opt/apache-storm-${STORM_VERSION} /opt/storm &&  rm  /tmp/apache-storm-${STORM_VERSION}.tar.gz
ADD  storm.yaml  /opt/storm/conf/


# install supervisord
RUN easy_install pip && pip install meld3==0.6.7 supervisor==3.0.0 
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 8080

CMD ["/usr/bin/supervisord"]
