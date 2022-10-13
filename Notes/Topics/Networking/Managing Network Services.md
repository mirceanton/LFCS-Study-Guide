# Managing Network Services

## NetworkManager

The service that configures the network devices is `NetworkManager`

- To check if network manager is running:
```bash
systemctl status NetworkManager.service
```

- To install network manager
```bash
sudo dnf install NetworkManager
```

- To enable and start the service
```bash
sudo systemctl enable --now NetworkManager.service
```

## Other services

- To check for services that are listening on ports:

```bash
sudo ss -tulnp #recommended
# Or
sudo netstat -tulnp #older tool, might get deprecated
```
