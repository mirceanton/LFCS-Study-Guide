# Managing Encrypted Storage

- To encrypt a storage device: `cryptsetup`
- Encryption modes:
  - plain
  - luks (linux unified key setup)

## Encryption in plain mode

- To open a secured disk
    ```bash
    sudo cryptsetup --verify-passphrase open --type plain /dev/sdb encrypted_disk
    ```
    In this case:
      - `--verify-passphrase` checks the password before decrypting to avoid corruption if a wrong password is provided
      - `open` the action to perform
      - `--type plain` encription mode
      - `/dev/sdb` the device where data is stored
      - `encrypted_disk` the name for the mapped device -> `/dev/mapper/encrypted_disk`

- Create an xfs partition on an encrypted disk
```bash
sudo mkfs.xfs /dev/mapper/encrypted_disk
```

- Mount an encrypted disk
```bash
sudo mount /dev/mapper/encrypted_disk /mnt
```

> Note: the mapped device is basically acting like a proxy. Data gets sent to it and then it encrypts it and sends it to the actual disk.  
> It does not store data in it per se. Same for reading, it decrypts the data from the disk and gives it to us.  
> All read-write operations happen on the disk itself (`/dev/sdb` in this example)

- Close an encrypted disk
```bash
sudo cryptsetup close encrypted_disk
```

## Encryption in luks mode

- Create a luks disk
```bash
sudo cryptsetup luksFormat /dev/sdb
```

- Change the password of a disk
```bash
sudo cryptsetup luksChangeKey /dev/sdb
```

- Open a luks disk
```bash
sudo cryptsetup open /dev/sdb luks_disk
```

- Create a fs on a luks disk
```bash
sudo mkfs.xfs /dev/mapper/luks_disk
```

- Close a luks disk
```bash
sudo cryptsetup close luks_disk
```
