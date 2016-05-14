FROM centos

WORKDIR ~

RUN yum install -y wget

RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.rpm"

RUN yum localinstall -y jdk-8u91-linux-x64.rpm

RUN rm jdk-8u91-linux-x64.rpm
