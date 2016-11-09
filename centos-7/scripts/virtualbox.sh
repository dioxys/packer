#!/bin/bash -ex

mkdir /tmp/isomount
mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /tmp/isomount
/tmp/isomount/VBoxLinuxAdditions.run
umount /tmp/isomount
rm -rf /tmp/isomount /home/vagrant/VBoxGuestAdditions.iso
chkconfig --add vboxadd
chkconfig vboxadd on