# Managing Storage Partitions

- Show all block devices
```bash
lsblk
```

- To get the UUID of a block device
```bash
sudo blkid [DEVICE]
```

- Show partitions on a block device
```bash
fdisk --list /dev/sda
```

- To visually manage partitions on a block device
```bash
cfdisk /dev/sda
```
