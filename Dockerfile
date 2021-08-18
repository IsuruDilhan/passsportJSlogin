FROM centos:centos8

MAINTAINER isuru.dilhan@yahoo.com

# Install Node...
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all


# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install


EXPOSE 8080

CMD cd /src && node ./app.js