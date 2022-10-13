# Managing the Firewall

## Installing the firewall

```bash
sudo dnf install firewalld
```

## Managing the firewall

### Managing the default zone

- To show the current default

```bash
firewall-cmd --get-default-zone
```

- To set a new default-zone

```bash
firewall-cmd --set-default-zone=<zone>
```

## Managing firewall rules

- Show all rules
```bash
firewall-cmd --list-all
```

- Show info about a service
```bash
firewall-cmd --info-service=<service>
```

- Add a new rule (to allow http)
```bash
firewall-cmd --add-service=http
firewall-cmd --add-port=80/tcp
```

- Remove a rule (to block http)
```bash
firewall-cmd --remove-service=http
firewall-cmd --remove-port=80/tcp
```

- Add a block of IPs to a zone
```bash
firewall-cmd --add-source=10.11.12.0/24 --zone=<zone>
```

- List active zones
```bash
firewall-cmd --get-active-zones
```

- Remove a block of IPs from a zone
```bash
firewall-cmd --remove-source=10.11.12.0/24 --zone=<zone>
```

- To make the current setup permanent
```bash
firewall-cmd --runtime-to-permanent
```

- To make a permanent change instantly
```bash
firewall-cmd [command] --permanent
```
