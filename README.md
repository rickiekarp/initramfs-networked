# initramfs-networked
Enables WIFI in initramfs and unlocks an encrypted LUKS system with a key 

## Installation
1. Add kernel module of your Wifi device to `/etc/initramfs-tools/modules`. (Check `lspci -nnk` for available kernel modules)
2. Create `wpa_supplicant.conf` based on `wpa_supplicant.conf.example`.
3. Execute `install.sh`
