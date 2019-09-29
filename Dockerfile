FROM centos:7

WORKDIR /app

RUN yum install -y wget && \
    yum install -y java-1.8.0-openjdk

ADD http://mirrors.tuna.tsinghua.edu.cn/apache/skywalking/6.4.0/apache-skywalking-apm-6.4.0.tar.gz /app

RUN tar -xf apache-skywalking-apm-6.4.0.tar.gz && \
    mv apache-skywalking-apm-bin skywalking

RUN ls /app
