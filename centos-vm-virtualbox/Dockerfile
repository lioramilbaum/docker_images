FROM centos:7

RUN yum -y install rsync openssh-clients virtualbox libguestfs-tools-c \
  ruby-devel gcc \
  && yum -y install \
  https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.rpm \
  && vagrant box add centos/7 --provider virtualbox

COPY Vagrantfile /centos-vm-virtualbox/
