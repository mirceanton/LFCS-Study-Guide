# Advanced File System Permissions

## Access Control Lists

- Show ACL for a file
```bash
getfacl ./file
```

- Set ACL for user
```bash
setfacl --modify user:[username]:[permission] ./file
```

- Give user mike read-write permissions to file
```bash
setfacl --modify user:mike:rw ./file
```

- Set ACL for group
```bash
setfacl --modify group:[groupname]:[permission] ./file
```

- Give group admins read-write-execute permissions to file
```bash
setfacl --modify group:admins:rwx ./file
```

- Set ACL mask (limits all current ACLs to the mask)
```bash
setfacl --modify mask:[permission]
```

- Limit all permissions to read-only
```bash
setfacl --modify mask:r
```

- Set ACL recursively for a directory
```bash
setfacl --recursive --modify [user/group]:[name]:[permission] dir/
```

- Remove ACL
```bash
setfacl --remove [user/group]:name file/
```

- Remove permissions for user mike
```bash
setfacl --remove user:mike
```

## File Attributes

- Show file attributes
```bash
lsattr ./file
```

- Add attribute
```bash
chattr +[ATTR] ./file
```

- Make file immutable
```bash
chattr +i ./file
```

- Remove attribute
```bash
chattr i[ATTR] ./file
```

- Remove file immutable attribute
```bash
chattr -i ./file
```

- See all attributes
```bash
man chattr
```
