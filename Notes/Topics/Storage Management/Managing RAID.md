# Managing RAID

- RAID = redundant array of independent disks
- RAID allows us to group together disks to increase capacity, speed and/or redundancy

- RAID levels:
  - 0 -> stripe
    - spread data across all disks
    - 1 disk dies, we lose everything
    - best performance
    - highest risk
    - highest capacity
  - 1 -> mirror
    - mirrors data on all disks
    - any of the disks can die as long as we still remain with 1
    - good performance
    - lowest risk
    - lowest capacity
  - 5 -> 1 disk of parity
    - 1 disks stores extra partity data for the other disks in the array
    - 1 disk dies, we're still ok; 2 disks die we lose everything
    - mediocre performance
    - medium risk
    - good capacity
  - 6 -> 2 disks of parity
    - same as RAID 5 but with 1 extra disk
    - can endure 2 disk failures
    - mediocre performance
    - low-ish risk
    - low-ish capacity
  - 10 -> radi1 of raid0
    - min 4 disks, 2 groups of raid1 set up in raid0
    - very good performance
    - can endure 2 disk failures (as long as they fail in different pools)
    - medium risk
    - medium capacity

Command: `mdadm`

- Create a RAID0 of `/dev/sdb` and `/dev/sdc`
```bash
sudo mdadm --create /dev/md0 --level=0 --raid-devices=2 /dev/sdb /dev/sdc
```

- Create a fs on a RAID device
```bash
sudo mkfs.xfs /dev/md0
```

- Stop an array
```bash
sudo mdadm --stop /dev/md0
```

- Create a RAID1 of `/dev/sdb` and `/dev/sdc` using `/dev/sdd` as a spare disk
```bash
sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sdb /dev/sdc --spare-devices=1 /dev/sdd
```

- Delete superblocks on previously RAIDed disks
```bash
sudo mdadm --zero-superblock /dev/sdb /dev/sdc
```

- Add another disk to aa array
```bash
sudo mdadm --manage /dev/md0 --add /dev/sdc
```

- Remove disk from array
```bash
sudo mdadm --remove /dev/md0 --add /dev/sdc
```

- Check array status
```bash
cat /proc/mdstat
```
