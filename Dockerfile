FROM centos:centos6

MAINTAINER isuru.dilhan@yahoo.com

# Enable EPEL for Node.js
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node...
RUN yum install -y npm

# Install Mongo...
RUN yum -y install mongodb-server
RUN mkdir -p /data/db

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

# Start mongo service
# RUN service mongod start

EXPOSE 8080

CMD cd /src && npm start