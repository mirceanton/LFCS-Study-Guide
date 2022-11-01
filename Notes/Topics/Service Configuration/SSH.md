# Managing SSH Servers and Clients

## SSH Server

- Managing the SSH server config
```bash
vim /etc/ssh/sshd_config
```

> Typical actions:  
>  - change port  
>  - change listen address  
>  - listen on ipv4/ipv6 (inet/inet6)  
>  - allow/disallow root login  
>  - allow/disallow password login  
>  - allow/disallow key-based login  

- Add custom settings for a given user
```bash
...
Match User <username>
    <settings here>
...
```

- Reload sshd settings
```bash
sudo systemctl reload sshd
```

## SSH Client

- Manage the global SSH client settings:
```bash
vim /etc/ssh/ssh_config # NOT RECOMMENDED
vim /etc/ssh/ssh_config.d/99-custom-settings.conf # <-- RECOMMENDED
```

- Creating a static config for ssh hosts: `vim ~/.ssh/config`
```bash
# ~/.ssh/config
Host myhostname
  HostName 1.2.3.4
  Port 2222
  User myuser
# now we can use: ssh myhostname
```

- Generate a new SSH key pair
```bash
ssh-keygen
```

- Copy the SSH public key to a server for key-based auth
```bash
ssh-copy-id user@hostname
```

- Remove a saved fingerprint
```bash
ssh-keygen -R hostname
```
