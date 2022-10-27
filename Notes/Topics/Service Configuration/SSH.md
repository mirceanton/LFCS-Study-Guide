# Managing SSH Servers and Clients

## SSH Server

- managing the server: `vim /etc/ssh/sshd_config`

- add custom settings for a given user:
```bash
...
Match User <username>
    <settings here>
...
```

- reload sshd settings: `sudo systemctl reload sshd`

**Examples**:
- change port
- change listen address
- listen on ipv4/ipv6 (inet/inet6)
- allow/disallow root login
- allow/disallow password login
- allow/disallow key-based login
- etc.

## SSH Client

- managing the global client settings:
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

- generate new key pair: `ssh-keygen`

- copy ssh public key to server: `ssh-copy-id user@hostname`

- removing a saved fingerprint: `ssh-keygen -R hostname`
