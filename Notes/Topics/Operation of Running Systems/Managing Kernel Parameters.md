# Managing Kernel Parameters

- show all kernel params in use: `sudo sysctl -a`
- set kernel param (non persistent): `sudo sysctl -w <param>=<value>`
- set kernel param (persistent): `echo '<param>=<value>' > '/etc/sysctl.d/<filename>.conf'`
- set kernel param from file: `sudo sysctl -p <path to file>`
- check a particular param: `sudo sysctl <param>`
