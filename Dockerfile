FROM centos:centos7

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum -y install epel-release && yum -y update

RUN yum -y install openssh-server openssh-clients \
           gperftools google-perftools gcc gcc-c++ make automake\
           libtool bison autoconf numpy scipy swig ant \
           java-1.8.0-openjdk java-1.8.0-openjdk-devel \
           zlib-devel libuuid-devel opencv-devel jemalloc-devel numactl-devel \
           libdb-cxx-devel libaio-devel openssl-devel readline-devel \
           libgtop2-devel glib-devel python python-devel python-pip \
           boost-devel

RUN mkdir -p /tailbench/scratch

RUN ln -s /usr/lib64/glib-2.0/include/glibconfig.h  /usr/include/glib-2.0/


ENTRYPOINT [""]