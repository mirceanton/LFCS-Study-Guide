# Managing Virtual Machines

- install tools: `sudo dng install libvirt qemu-kvm`
  - `libvirt` -> utilities to interact with VMs
  - `qemu-kvm` -> actually runs virtual machines

- create a new VM from an xml file: `virsh define file.xml`
- delete VM: `virsh undefine <VM name>` (keeps storage, see `virsh help undefine` for more options)

- show information on a VM: `virsh dominfo <VM name>`

- show active VMs: `virsh list`
- show all VMs: `virsh list --all`

- start VM: `virst start <VM name>`
- shutdown VM: `virst shutdown <VM name>` (graceful shutdown)
- poweroff VM: `virst destroy <VM name>` (force shutdown)
- reboot VM: `virst reboot <VM name>` (graceful reboot)
- reset VM: `virst reset<VM name>` (force reboot)

- set VM to start on server boot: `virsh autostart <VM name>`
- disable VM to start on server boot: `virsh autostart --disable <VM name>`

- set number of CPUs for VM:
```bash
virsh setvcpus <VM name> <cpu count> --config --maximum
virsh setvcpus <VM name> <cpu count> --config
virsh poweroff <VM name>
virsh start <VM name>
```

- set memory for VM:
```bash
svirsh setmaxmem <VM name> --size <mem>M --config
virsh poweroff <VM name>
virsh start <VM name>
```

> Note: see the [official commandline reference](https://libvirt.org/sources/virshcmdref/html-single/)
