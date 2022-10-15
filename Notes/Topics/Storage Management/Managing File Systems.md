# Managing File Systems

## XFS

- Creating an XFS filesystem
```bash
sudo mkfs.xfs /dev/sda
```

- Check options for xfs
```bash
man mkfs.xfs
```

- Create and label an xfs partition with inode size of 510
```bash
sudo mkfs.xfs -L "FileLabel" -i 512 /dev/sda
```

- To manage an existing partition
```bash
sudo xfs_admin [OPTION] /dev/sda
```

- Change label of xfs partition
```bash
sudo xfs_admin -L "newLabel" /dev/sda
```

- Show label of xfs partition
```bash
sudo xfs_admin -l /dev/sda
```

## EXT4

- Creating an EXT4 filesystem
```bash
sudo mkfs.ext4 /dev/sda
```

- Check options for ext4
```bash
man mkfs.ext4
```

- Create a partition with a custom number of inodes and a label
```bash
sudo mkfs.ext4 -L "FileLabel" -N 1024000 /dev/sda
```

- To manage an existing ext4 partition
```bash
sudo tune2fs [OPTION] /dev/sda
```

- Change label of ext4 partition
```bash
sudo tune2fs -L "newLabel" /dev/sda
```

- Show label of ext4 partition
```bash
sudo tune2fs -l /dev/sda
```

## Mounting File Systems

- To mount `/dev/sdb1` on `/mnt`
```bash
sudo mount /dev/sdb1 /mnt
```

- To unmount the partition
```bash
sudo umount /mnt
```

- To show all mounted devices (and their options)
```bash
findmnt
```

- To show all xfs mounted devices
```bash
findmnt -T xfs
```

- To edit the mount options of a partition
    ```bash
    sudo mount -o [OPTIONS] /dev/sda  /mnt
    ```
    Commonly used options:
      - `defaults` -> default options
      - `rw` -> read-write
      - `ro` -> read-only
      - `nosuid` -> the filesystem cannot contain SUID files
      - `noexec` -> the filesystem cannot contain executable binaries
      - `nodev` -> the filesystem cannot contain special devices
      - `noauto` -> the filsystem is not auto-mounted

### At or During boot

Modify the `/etc/fstab` file to include the partitions to be mounted at boot.

- To mount `/dev/sdb1` on `/mnt` as `xfs` during boot, add the following line to `/etc/fstab`:
```bash
# DEVICE    MOUNT POINT   FS Type   FS Options  Backup enable/disable   Err check priority
/dev/sdb1   /mnt          xfs       defaults    0                       2
```

- To mount `/dev/sdb2` as read-only
```bash
# DEVICE    MOUNT POINT   FS Type   FS Options     Backup enable/disable   Err check priority
/dev/sdb1   /mnt          xfs       defaults,ro    0                       2
```

- To mount a swap device during boot, add the following line:
```bash
/swapfile   none    swap    defaults    0 0
```

- To force the system to mount the devices in `/etc/fstab` without rebooting
```bash
sudo mount -a
```

> Note: we can also provide the UUID of a block device instead of their name

### On demand

Utility: `autofs`  
Configuration file: `/etc/auto.master`

- Install autofs
```bash
sudo dnf install -y autofs
```

- Start autofs
```bash
sudo systemctl enable --now autofs
```

- Configure autofs to auto-mount the `/shares` directory, unmount it if unused for 400 sec and define the options in a custom `auto.shares` file
    ```bash
    /shares/  /etc/auto.shares  --timeout=400
    ```
    In this case:
      - `shares/` is the root directory in which all other filesystems will be auto-mounted.
      - `/etc/auto.shares` is the config file for the `shares/` directory
      - `--timeout=400` the number of seconds the fs is unused before unmounting

    ```bash
    $cat /etc/auto.shares
    dir  -fstype=auto 127.0.0.1:/etc
    ```

    In this case:
      - `dir` is the name of the directory inside `/shares/`
      - `-fstype=auto` tells autofs to auto deduce the fs type
      - `127.0.0.1:/etc` is the path to the network share we want to mount

- Reload changes to autofs config file
```bash
sudo systemctl reload autofs
```

- To automount file systems at root level with autofs, use `/-` as the root directory
