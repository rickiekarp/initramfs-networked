#!/bin/bash
rm \
    "/bin/luksunlockusb" \
    "/etc/initramfs-tools/hooks/enable-wireless" \
    "/etc/initramfs-tools/scripts/init-premount/a_enable_wireless" \
    "/etc/initramfs-tools/scripts/local-bottom/kill_wireless" \
    "/etc/initramfs-tools/wpa_supplicant.conf" \
    "/etc/initramfs-tools/token.conf"
update-initramfs -u
