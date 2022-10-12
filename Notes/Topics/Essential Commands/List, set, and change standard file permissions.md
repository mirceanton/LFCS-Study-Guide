# List, set, and change standard file permissions

## List file permissions and ownership

```bash
$ ls -l netlify.toml 
-rw-rw-r-- 1 mike mike 723 Oct  6 19:53 netlify.toml
```

- Permission: `-rw-rw-r--`
  - user: `rw-` -> read and write, no execute
  - group: `rw-` -> read and write, no execute
  - others: `r` -> read only
- Ownership:
  - User: mike
  - Group: mike

## Changing the `user:group` ownership

- Change group owner
  ```bash
  chgrp group_name file_name
  ```
- Change user owner
  ```bash
  chown user_name file_name
  ```
- Change both group and user:
  ```bash
  chown user_name:group_name file_name
  ```

## Changing the permissions

- With octal permission numbers:
  ```bash
  chmod 777 file_name
  ```

| `r--` | `-w-` | `--x` | `rw-` | `r-x` | `-wx` | `rwx` |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|   4   |   2   |   1   |   6   |   5   |   3   |   7   |

- With human readable permissions:
  ```bash
  chmod "u=rwx,g=rwx,o=rwx" file_name
  ```

Other examples:

- **Add** read permissions to the user/group/other
  ```bash
  chmod u+r file_name #user
  chmod g+r file_name #group
  chmod o+r file_name #other
  ```
- **Remove** read permissions from the user/group/other
  ```bash
  chmod u-r file_name #user
  chmod g-r file_name #group
  chmod o-r file_name #other
  ```
- **Remove all** permissions for the user
  ```bash
  chmod u= file_name
  chmod u-rwx file_name
  ```

![[Advanced File Permissions]]
