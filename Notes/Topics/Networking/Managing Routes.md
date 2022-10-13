# Managing Routes

- Show all routes
```bash
ip route show
ip r
```

## Making temporary changes to the routing table

- Add a new route
```bash
ip route add 192.168.1.0/24 via 10.0.0.13
```

- Add a new route via a specific interface
```bash
ip route add 192.168.1.0/24 via 10.0.0.13 dev eno1
```

- Remove a route
```bash
ip route del 192.168.1.0/24
```

- Add a default route (gateway)
```bash
ip route add default via 192.168.1.0
```

- Delete a default route
```bash
ip route del default via 192.168.1.0
```

## Making permanent changes to the routing table

Either use `nmtui` and then reload the configuration:

```bash
sudo nmtui
sudo nmcli device reapply eno1
```

Or issue the `nmcli` commands directly:

- Add a route
```bash
sudo nmcli connection modify eno1 +ipv4.routes "192.168.1.0/24 10.0.0.13"
sudo nmcli device reapply eno1
```

- Remove a route
```bash
sudo nmcli connection modify eno1 -ipv4.routes "192.168.1.0/24 10.0.0.13"
sudo nmcli device reapply eno1
```
