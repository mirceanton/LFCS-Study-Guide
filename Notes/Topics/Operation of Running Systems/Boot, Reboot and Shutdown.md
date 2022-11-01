# Boot, Reboot and Shutdown

## (Force) (force) reboot or shutdown

- Rebooting a system
```bash
sudo systemctl reboot
```

- Force rebooting a system (don't give programs a chance to gracefully end)
```bash
sudo systemctl reboot --force
```

- Force restart a system (as if unplugging and replugging the power cord)
```bash
sudo systemctl reboot --force --force
```

- Shut down a system
```bash
sudo systemctl poweroff
```

- Force shut down a system  (don't give programs a chance to gracefully end)
```bash
sudo systemctl poweroff --force
```

- Force kill a system (as if unplugging the power cord)
```bash
sudo systemctl poweroff --force --force
```

## Scheduled reboot and/or shut down

- Schedule a shutdown at 2AM
```bash
sudo shutdown 02:00
```

- Schedule a shutdown in 20 minutes:
```bash
sudo shutdown +15
```

- Schedule a reboot in 10 minutes:
```bash
sudo shutdown -r +10
```

- Reboot with a wall message:
```bash
sudo shutdown -r +6 'this is the wall message'
```

- Cancel a pending shutdown:
```bash
sudo shutdown -c
```
