# Advanced File Permissions: SGID

- SGID = Set Group IDentification bit
- Same as SUID but for the group. Executes the given file with the group of the executing user as the owner group instead of the group of the user that ran the file.

## Set SGID

- via octal value
```bash
mike@lfcs:~/demo$ touch sgid_file
mike@lfcs:~/demo$ ls -l
total 0
-rw-rw-r-- 1 mike mike 0 Oct 11 21:59 sgid_file
mike@lfcs:~/demo$ chmod 2664 sgid_file  # <--- this
mike@lfcs:~/demo$ ls -l
total 0
-rw-rwSr-- 1 mike mike 0 Oct 11 21:59 sgid_file
```

- via human-readable format
```bash
mike@lfcs:~/demo$ touch sgid_file
mike@lfcs:~/demo$ ls -l
total 0
-rw-rw-r-- 1 mike mike 0 Oct 11 21:59 sgid_file
mike@lfcs:~/demo$ chmod g+s sgid_file  # <--- this
mike@lfcs:~/demo$ ls -l
total 0
-rw-rwSr-- 1 mike mike 0 Oct 11 21:59 sgid_file
```

## Get SGID

```bash
ls -l file_name
```

- capital s -> SGID set, no execute permission
```bash
mike@lfcs:~/demo$ chmod g+s sgid_file 
mike@lfcs:~/demo$ ls -l
total 0
-rw-rwSr-- 1 mike mike 0 Oct 11 21:59 sgid_file
```

- lowercase s -> SGID set, with execute permission
```bash
mike@lfcs:~/demo$ chmod g+sx sgid_file 
mike@lfcs:~/demo$ ls -l
total 0
-rw-rwsr-- 1 mike mike 0 Oct 11 21:59 sgid_file
```
