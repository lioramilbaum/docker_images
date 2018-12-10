#!/usr/bin/env bash

set -e

VAGRANTUSR=root
VAGRANTBOXPATH=/etc/systemd/system/vagrant-vm.service.d
export HOME=/root

cd ${VAGRANTBOXPATH}

sh -c '/usr/bin/vagrant up' ${VAGRANTUSR}

exit 0
