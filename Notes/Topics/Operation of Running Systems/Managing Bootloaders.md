# Managing Bootloaders

## Install

1. generate grub config:

    - bios: `grub2-mkconfig -o /boot/grub2/grub.cfg`
    - efi: `grub2-mkconfig -o /boot/efi/EFI/centos/grub.cfg`

2. install grub:

    - bios: `grub2-install /dev/sda`
    - efi: `dnf reinstall grub2-efi grub2-efi-modules shim`

## Configure

`sudo vim /etc/default/grub`

`sudo update-grub` or `grub2-mkconfig -o ...`
