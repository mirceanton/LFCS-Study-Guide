# Managing Processes

- startup services are defined in unit files in `/etc/systemd/system`

- viewing a service unit file: `systemctl cat sshd.service`

- editing a service unit file: `systemctl edit --full sshd.service`
- reset a service unit file: `systemctl revert sshd.service`

- service status: `systemctl status sshd.service`

- start service: `systemctl start sshd.service`
- stop service: `systemctl stop service`

- reload a service: `systemctl reload sshd.service`
- restart a service: `systemctl restart sshd.service`
- reload/restart a service: `systemctl reload-or-restart sshd.service`

- prevent service from starting at boot: systemctl disable sshd.service`
- enable service: `stystemctl enable sshd.service`
- enable and start service: `systemctl enable --now sshd.service`
- disable and stop service: `systemctl disable --now sshd.service`
- check if a service is enabled: `systemctl is-enabled sshd.service`

- mask a service: `systemctl mask sshd.service`
- unmask a service: `systemctl unmask sshd.service`

- get a list of all services: `systemctl list-units --all --type service`
