# Operating Modes

- Show the default boot target
```bash
systemctl get-default
```

- Change the default boot target
```bash
systemctl set-default ...
```

- Switch to a different target for the current session
```bash
systemctl isolate ...
```

Other targets:
- graphical -> GUI target
- multi-user -> terminal target
- emergency -> loads as little services as possible
- rescue -> loads more services than emergency, but less than regular targets
