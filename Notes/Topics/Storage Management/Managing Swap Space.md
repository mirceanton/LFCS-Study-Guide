# Managing Swap Space

- swap: an "extension" of the system memory, stored on disk
- the system will move unused items from RAM to swap (on disk) when more memory would be needed but no more is left

- To check if the system uses swap
```bash
swapon --show
```

- Format a partition as `swap`
```bash
sudo mkswap /dev/sda3
```

- Format a file as `swap`
```bash
dd if=/dev/zero of=/swap bs=1M count=2048 # Create 2Gb swap file
chmod 600 /swap
mkswap /swap
```

- Disable a swap device
```bash
swapoff /swap
```
