# Operating Modes

- default boot target: `systemctl get-default`
- change default boot target: `systemctl set-default ...`
- switch to a different target for the current session: `systemctl isolate ...`

other targets:

- graphical -> GUI target
- multi-user -> terminal target
- emergency -> loads as little services as possible
- rescue -> loads more services than emergency, but less than regular targets
