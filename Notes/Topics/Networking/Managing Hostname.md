# Managing Hostname

- To set custom (local only) hostname resolution, edit the `/etc/hosts` file:

```bash
vi /etc/hosts
```

This way, you can refer to other hosts via their hostname instead of ip.

- To change the local transient-hostname:

```bash
hostnamectl set-hostname <hostname>
# also make sure to edit the /etc/hostname file
```

- To make the hostname change permanent:
```bash
hostname > /etc/hostname
```
