# Managing SELinux

- SELinux context label format: `user:role:type:level`

- show SELinux file context: `ls -Z`
- show SELinux process context: `ps axZ`
- show security context for the current user: `id -Z`

- show SELinux mappings for users: `sudo semanage login -l`
- show all SELinux users and their roles: `sudo semanage user -l`

- check if SELinux is enabled: `sudo getenforce`
  - enforcing -> active
  - permissive -> active but only logging
  - disabled -> not active

- temporarily enable/disable SELinux: `sudo setenforce 0/1`

- set SELinux context for a file: `chcon <context> <file>`
- set SELinux context for a file using another as a reference: `chcon --reference=<ref file> <target file>`
- change SELinux user for a file: `chcon -u <user> <file>`
- change SELinux role for a file: `chcon -r <role> <file>`
- change SELinux type for a file: `chcon -t <type> <file>`
- change SELinux level for a file: `chcon -l <level> <file>`
