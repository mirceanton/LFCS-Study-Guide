# Basic Networking Commands

- Show all network interfaces
```bash
ip link show
ip l
```

- Show the IPs for all interfaces
```bash
ip address show
ip a
```

- To see dns resolvers
```bash
cat /etc/resolv.conf
```

- Tool to configure networking (set/add IP, set static route etc.)
```bash
nmtui # TUI -> terminal user interface
nmcli # CLI -> command line interface
```

- To manually reapply network changes
```bash
sudo nmcli device reapply <NIC>
```

- To initialize a network device at boot time:
```bash
nmcli connection modify <CONN> autoconnect yes
```
