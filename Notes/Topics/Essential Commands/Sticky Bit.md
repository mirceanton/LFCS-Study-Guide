# Advanced File Permissions: Sticky Bit

- Set on directories, not files.
- Only allows the user that owns a file inside the directory to remove it.

## Set Sticky Bit

- via octal value
```bash
mike@lfcs:~/demo$ ls -l
total 4
drwxrwxr-x 2 mike mike 4096 Oct 11 22:04 sticky_dir
mike@lfcs:~/demo$ chmod 1775 sticky_dir/
mike@lfcs:~/demo$ ls -l
total 4
drwxrwxr-t 2 mike mike 4096 Oct 11 22:04 sticky_dir
```

- via human-readable value
```bash
mike@lfcs:~/demo$ ls -l
total 4
drwxrwxr-x 2 mike mike 4096 Oct 11 22:04 sticky_dir
mike@lfcs:~/demo$ chmod +t sticky_dir/
mike@lfcs:~/demo$ ls -l
total 4
drwxrwxr-t 2 mike mike 4096 Oct 11 22:04 sticky_dir
```

## Get Sticky Bit

```bash
ls -l dir_name
```

- capital T -> Sticky bit set, no execute permission
```bash
mike@lfcs:~/demo$ chmod +t,o-x sticky_dir/
mike@lfcs:~/demo$ ls -l
total 4
drwxrwxr-T 2 mike mike 4096 Oct 11 22:04 sticky_dir
```

- lowercase T -> Sticky bit set, with execute permission
```bash
mike@lfcs:~/demo$ chmod +t sticky_dir/
mike@lfcs:~/demo$ ls -l
total 4
drwxrwxr-t 2 mike mike 4096 Oct 11 22:04 sticky_dir
```
