FROM nonameyet/systemd-libvirt:latest

RUN yum -y install rsync openssh-clients libvirt-client \
  libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c \
  ruby-devel gcc \
  && yum -y install \
  https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.rpm \
  && vagrant box add centos/7 --provider libvirt \
  && vagrant plugin install vagrant-libvirt

COPY Vagrantfile /etc/systemd/system/vagrant-vm.service.d/
COPY scripts/*.sh /usr/lib/systemd/scripts/
COPY vagrant-vm.service /etc/systemd/system/
COPY remount-sys.service /etc/systemd/system/

RUN systemctl enable remount-sys.service vagrant-vm.service
