# Managing Virtual Machines

- Install required tools:
  - `libvirt` -> utilities to interact with VMs
  - `qemu-kvm` -> actually runs virtual machines
```bash
sudo dnf install libvirt qemu-kvm
```

- Create a new VM from an xml file
```bash
virsh define file.xml
```

- Delete a VM
```bash
virsh undefine <VM name> # keeps storage, see `virsh help undefine` for more options
```

- Show information of a VM
```bash
virsh dominfo <VM name>
```

- Show active VMs
```bash
virsh list
```

- Show all VMs
```bash
virsh list --all
```

- Start VM
```bash
virsh start <VM name>
```

- Shutdown VM
```bash
virsh shutdown <VM name> # graceful shutdown
```

- Poweroff VM
```bash
virsh destroy <VM name> # force shutdown
```

- Reboot VM
```bash
virsh reboot <VM name> # graceful reboot
```

- Reset VM
```bash
virsh reset<VM name> # force reboot
```

- Set VM to start on server boot
```bash
virsh autostart <VM name>
```

- Disable VM to start on server boot
```bash
virsh autostart --disable <VM name>
```

- Set number of CPUs for VM
```bash
virsh setvcpus <VM name> <cpu count> --config --maximum
virsh setvcpus <VM name> <cpu count> --config
virsh poweroff <VM name>
virsh start <VM name>
```

- Set memory for VM
```bash
virsh setmaxmem <VM name> --size <mem>M --config
virsh poweroff <VM name>
virsh start <VM name>
```

> Note: see the [official commandline reference](https://libvirt.org/sources/virshcmdref/html-single/)
