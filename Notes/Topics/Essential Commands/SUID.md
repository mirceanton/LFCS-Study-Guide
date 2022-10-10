## SUID

- SUID = Set User IDentification bit
- When set, the file is executed, it will be executed as the user owner of the file and not the user that is actually running the file.

### Set SUID

- via octal value
  ```bash
  chmod 4664 file_name
  ```
  ![[Pasted image 20221010174950.png]]

- via human-readable value
  ```bash
  chmod u+s file_name
  ```
  ![[Pasted image 20221010175047.png]]

### Get SUID

```bash
ls -l file_name
```

- capital S -> SUID set, no execute permission
  ![[Pasted image 20221010175248.png]]
- lowercase S -> SUID set, with execute permissions
  ![[Pasted image 20221010175314.png]]

## See also

- [[File Permissions]]
