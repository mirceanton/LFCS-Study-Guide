# Managing Kernel Parameters

- Show all kernel parameters in use
```bash
sudo sysctl -a
```

- Set kernel parameter (non persistent)
```bash
sudo sysctl -w <param>=<value>
```

- Set kernel parameter (persistent)
```bash
echo '<param>=<value>' > '/etc/sysctl.d/<filename>.conf'
```

- Set kernel parameter(s) from file
```bash
sudo sysctl -p <path to file>
```

- Check a particular param
```bash
sudo sysctl <param>
```
