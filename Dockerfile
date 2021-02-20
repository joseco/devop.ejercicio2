FROM centos:7

RUN yum -y update
RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum install -y nodejs

RUN mkdir /work
ADD . /work

EXPOSE  3000
CMD ["node", "/work/app.js"]