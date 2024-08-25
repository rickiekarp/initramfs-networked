#!/bin/bash -e

tokenFile="initramfs-tools/token.conf"
if [ ! -f $tokenFile ]; then
  uuid=$(openssl rand -hex 16)
  echo $uuid > $tokenFile
fi

if [ -f initramfs-tools/wpa_supplicant.conf ]; then
  cp -r initramfs-tools /etc/
  cp bin/luksunlockusb /bin/luksunlockusb
  update-initramfs -u
else
  echo "Error: initramfs-tools/wpa_supplicant.conf not found, aborting installation"
  echo "You can create wpa_supplicant.conf by using wpa_supplicant.conf.example as a template."
  exit 1
fi
