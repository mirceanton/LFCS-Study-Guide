## SGID

- SGID = Set Group IDentification bit
- Same as [[SUID]], but for the group. Executes the given file with the group of the executing user as the owner group instead of the group of the user that ran the file.

### Set SGID

- via octal value
  ```bash
  chmod 2664 file_name
  ```
  ![[Pasted image 20221010175525.png]]
- via human-readable format
  ```bash
  chmod g+s file_name
  ```
  ![[Pasted image 20221010175630.png]]

### Get SGID

```bash
ls -l file_name
```
- capital s -> SGID set, no execute permission
  ![[Pasted image 20221010175753.png]]
- lowercase s -> SGID set, with execute permission
  ![[Pasted image 20221010175813.png]]

## See Also

- [[File Permissions]]
- [[SUID]]
- [[Sticky Bit]]