#!/bin/sh

set -x
set -e

mkdir -p tmp

if [ ! -e tmp/got-wgets ];
then
  cd tmp
  wget http://archive.ubuntu.com/ubuntu/dists/xenial-updates/main/installer-amd64/current/images/hwe-netboot/mini.iso
  wget http://releases.ubuntu.com/xenial/ubuntu-16.04.4-server-amd64.iso
  wget http://security.ubuntu.com/ubuntu/pool/main/l/linux-hwe/linux-image-extra-4.8.0-58-generic_4.8.0-58.63~16.04.1_i386.deb
  touch got-wgets
fi
