# SUID

- SUID = Set User IDentification bit
- When set, the file is executed, it will be executed as the user owner of the file and not the user that is actually running the file.

## Set SUID

- via octal value
```bash
mike@lfcs:~/demo$ ls -l
total 0
-rw-rw-r-- 1 mike mike 0 Oct 11 22:02 suid_file
mike@lfcs:~/demo$ chmod 4664 suid_file 
mike@lfcs:~/demo$ ls -l
total 0
-rwSrw-r-- 1 mike mike 0 Oct 11 22:02 suid_file
```

- via human-readable value
```bash
mike@lfcs:~/demo$ ls -l
total 0
-rw-rw-r-- 1 mike mike 0 Oct 11 22:02 suid_file
mike@lfcs:~/demo$ chmod u+s suid_file 
mike@lfcs:~/demo$ ls -l
total 0
-rwSrw-r-- 1 mike mike 0 Oct 11 22:02 suid_file
```

### Get SUID

```bash
ls -l file_name
```

- capital S -> SUID set, no execute permission
```bash
mike@lfcs:~/demo$ chmod u+s suid_file 
mike@lfcs:~/demo$ ls -l
total 0
-rwSrw-r-- 1 mike mike 0 Oct 11 22:02 suid_file
```

- lowercase S -> SUID set, with execute permissions
```bash
mike@lfcs:~/demo$ chmod u+sx suid_file 
mike@lfcs:~/demo$ ls -l
total 0
-rwsrw-r-- 1 mike mike 0 Oct 11 22:02 suid_file
```

## See also

- [[File Permissions]]
- [[SGID]]
- [[Sticky Bit]]
