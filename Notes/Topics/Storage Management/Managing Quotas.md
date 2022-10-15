# Managing Quotas

- Manage user quotas

```bash
sudo edquota --user [username]
```

- Manage group quotas

```bash
sudo edquota --group [groupname]
```

- Show configured quota for user
```bash
sudo quota --user [username]
```

- Show configured quota for group
```bash
sudo quota --group [groupname]
```

> Note: hard limits can never be exceeded  
> soft limits can be exceeded for a given grace period

- Edit grace period
```bash
sudo quota --edit-period
```

## Enabling quota on xfs

- Install utility
```bash
sudo dnf install -y quota
```

- Modify mount options
```bash
# make sure the usrquota,grpquota options are specified in /etc/fstab
$ cat /etc/fstab
# [...]
/dev/sdb  /mnt  xfs defaults,usrquota,grpquota 0 2
```

## Enabling quota on ext4

- Install utility
```bash
sudo dnf install -y quota
```

- Enable quota on disk
```bash
sudo quotacheck --create-files --user --group /dev/sdb
```

- Enable quota on mount point
```bash
sudo quotaon /mnt
```
