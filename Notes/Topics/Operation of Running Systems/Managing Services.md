# Managing Processes

Startup services are defined in unit files in `/etc/systemd/system`

- Show a service unit file
```bash
systemctl cat sshd.service
```

- Edit a service unit file
```bash
systemctl edit --full sshd.service
```

- Reset a service unit file
```bash
systemctl revert sshd.service
```

- Show service status
```bash
systemctl status sshd.service
```

- Start service
```bash
systemctl start sshd.service
```

- Stop service
```bash
systemctl stop service
```

- Reload a service
```bash
systemctl reload sshd.service
```

- Restart a service
```bash
systemctl restart sshd.service
```

- Reload/Restart a service
```bash
systemctl reload-or-restart sshd.service
```

- Enable service (start on boot)
```bash
systemctl enable sshd.service
```

- Enable and start service
```bash
systemctl enable --now sshd.service
```

- Disable service (prevent start on boot)
```bash
systemctl disable sshd.service
```

- Disable and stop service
```bash
systemctl disable --now sshd.service
```

- check if a service is enabled
```bash
systemctl is-enabled sshd.service
```

- Mask a service (prevent starting a service at all)
```bash
systemctl mask sshd.service
```

- Unmask a service
```bash
systemctl unmask sshd.service
```

- Get a list of all services
```bash
systemctl list-units --all --type service
```
