## Sticky Bit

- Set on directories
- Only allows the user that owns a file inside the directory to remove it.

### Set Sticky Bit

- via octal value
  ```bash
  chmod 1775 dir_name
  ```
  ![[Pasted image 20221010181643.png]]

- via human-readable value
  ```bash
  chmod +t dir_name
  ```
  ![[Pasted image 20221010181707.png]]

### Get Sticky Bit

```bash
ls -l dir_name
```

- capital T -> Sticky bit set, no execute permission
  ![[Pasted image 20221010181819.png]]
- lowercase T -> Sticky bit set, with execute permission
  ![[Pasted image 20221010181826.png]]

## See also

- [[File Permissions]]
- [[SGID]]
- [[SUID]]
