# Managing LVM

- LVM = Logical Volume Manager
- Objects in LVM:
  - pv: physical volume -> partitions or entire devices
  - vg: volume group
  - lv: logical volume

- To install LVM
```bash
sudo dnf install -y lvm2
```

## Managing physical volumes

- Create new physical volumes
```bash
sudo pvcreate /dev/sdb /dev/sdc ...
```

- List physical volumes
```bash
sudo pvdisplay
```

- Delete physical volumes
```bash
sudo pvremove /dev/sdc
```

## Managing volume groups

- Create new volume groups
```bash
# vgcreate [VOLUME_NAME] [LIST OF PV]
sudo vgcreate vg_name /dev/sdb
```

- Add a pv to a vg
```bash
# assuming sdc is an already created pv
sudo vgextend vg_name /dev/sdc
```

- Remove a pv from a vg
```bash
sudo vgreduce vg_name /dev/sdc
```

- List volume groups
```bash
sudo vgdisplay
```

- Delete volume groups
```bash
sudo vgremove
```

## Managinc logical volumes

- Cerate new logical volumes
```bash
sudo lvcreate --size 4G --name lv_name vg_name
```

- Resize a lv to fill a vg
```bash
sudo lvresize --extents 100%VG /dev/vg_name/lv_name
```

- Resize a lv to a specific size
```bash
sudo lvresize --size 2G /dev/vg_name/lv_name
```

- List logical volumes
```bash
sudo lvdisplay
```

- Delete logical volumes
```bash
sudo lvremove /dev/vg_name/lv_name
```

- Create a filesystem on an lv
```bash
sudo mkfs.xfs /dev/vg_name/lv_name
```
