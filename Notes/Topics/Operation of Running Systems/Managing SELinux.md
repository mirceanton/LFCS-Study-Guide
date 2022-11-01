# Managing SELinux

SELinux context label format: `user:role:type:level`

- Show SELinux file context
```bash
ls -Z
```

- Show SELinux process context
```bash
ps axZ
```

- Show security context for the current user
```bash
id -Z
```

- Show SELinux mappings for users
```bash
sudo semanage login -l
```

- Show all SELinux users and their roles
```bash
sudo semanage user -l
```

- Check if SELinux is enabled
```bash
sudo getenforce
```
> Enforcing status:
>  - enforcing -> active
>  - permissive -> active but only logging
>  - disabled -> not active

- Temporarily enable/disable SELinux
```bash
sudo setenforce 0/1
```

- Set SELinux context for a file
```bash
chcon <context> <file>
```

- Set SELinux context for a file using another as a reference
```bash
chcon --reference=<ref file> <target file>
```

- Change SELinux user for a file
```bash
chcon -u <user> <file>
```

- Change SELinux role for a file
```bash
chcon -r <role> <file>
```

- Change SELinux type for a file
```bash
chcon -t <type> <file>
```

- Change SELinux level for a file
```bash
chcon -l <level> <file>
```
