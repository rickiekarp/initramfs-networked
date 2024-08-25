#!/bin/bash -e

tokenFile="token.conf"
if [ ! -f $tokenFile ]; then
  uuid=$(openssl rand -hex 16)
  echo $uuid > $tokenFile
fi

if [ -f wpa_supplicant.conf ]; then
  cp -r initramfs-tools /etc/
  cp token.conf /etc/initramfs-tools
  cp wpa_supplicant.conf /etc/initramfs-tools
  cp bin/luksunlockusb /bin/luksunlockusb
  update-initramfs -u
else
  echo "Error: wpa_supplicant.conf not found, aborting installation"
  echo "You can create wpa_supplicant.conf by using wpa_supplicant.conf.example as a template."
  exit 1
fi
