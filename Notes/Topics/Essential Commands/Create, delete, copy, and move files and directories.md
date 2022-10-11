# Create, delete, copy, and move files and directories

## Managing files

### Listing directory contents

- Regular listing
```bash
mike@lfcs:~/files$ ls
file1  file2  file3  file4  file5  file6  file7  file8  file9
```

- Show hidden files
```bash
mike@lfcs:~/files$ ls -a
.  ..  file1  file2  file3  file4  file5  file6  file7  file8  file9
```

- Long listing format
```bash
mike@lfcs:~/files$ ls -l
total 0
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file1
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file2
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file3
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file4
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file5
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file6
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file7
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file8
-rw-rw-r-- 1 mike mike 0 Oct 11 21:44 file9
```

- Liste xact modified time
```bash
mike@lfcs:~/files$ ls --full-time
total 0
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file1
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file2
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file3
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file4
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file5
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file6
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file7
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file8
-rw-rw-r-- 1 mike mike 0 2022-10-11 21:44:31.000000000 +0000 file9
```

### Creating files

**Examples**:

- Creating an empty file:
```bash
mike@lfcs:~/files$ ls
mike@lfcs:~/files$ touch empty_file
mike@lfcs:~/files$ ls
empty_file
mike@lfcs:~/files$ cat empty_file 
mike@lfcs:~/files$ 
```

- Creating a file with some predefined content:
```bash
mike@lfcs:~/files$ ls
empty_file
mike@lfcs:~/files$ echo "some content" > content_file
mike@lfcs:~/files$ ls
content_file  empty_file
mike@lfcs:~/files$ cat content_file 
some content
mike@lfcs:~/files$ 
```

### Copying files

**Synopsis**:
```bash
cp [OPTION]... [-T] SOURCE DEST
```

**Examples**:

- Regular file copy
```bash
mike@lfcs:~/files$ ls -l
-rw-rw-r-- 1 root root 0 Oct 11 21:50 root_file
mike@lfcs:~/files$ cp root_file mike_file
mike@lfcs:~/files$ ls -l
-rw-rw-r-- 1 mike mike    0 Oct 11 21:50 mike_file
-rw-rw-r-- 1 root root    0 Oct 11 21:50 root_file
```

- Preserve all file attributes when copying:
```bash
mike@lfcs:~/files$ ls -l
-rw-rw-r-- 1 mike mike    0 Oct 11 21:50 mike_file
-rw-rw-r-- 1 root root    0 Oct 11 21:50 root_file
mike@lfcs:~/files$ cp --preserve=all root_file mike_file2
mike@lfcs:~/files$ ls -l
-rw-rw-r-- 1 mike mike    0 Oct 11 21:50 mike_file
-rw-rw-r-- 1 mike mike    0 Oct 11 21:50 mike_file2
-rw-rw-r-- 1 root root    0 Oct 11 21:50 root_file
mike@lfcs:~/files$ 
```

### Moving files

**Synopsis**:
```bash
mv [OPTION]... [-T] SOURCE DEST
```

**Examples**:
```bash
mike@lfcs:~/files$ ls
empty_file
mike@lfcs:~/files$ mv empty_file new_name_file
mike@lfcs:~/files$ ls
new_name_file
```

### Removing a file

**Synopsis**:
```bash
rm [OPTION]... [FILE]...
```

**Examples**:
```bash
mike@lfcs:~/files$ ls
content_file  empty_file
mike@lfcs:~/files$ rm content_file 
mike@lfcs:~/files$ ls
empty_file
```

### Getting information about files

**Synopsis**:
```bash
stat [OPTION]... FILE...
```

**Examples**:
```bash
mike@lfcs:~/files$ stat mike_file
  File: mike_file
  Size: 0               Blocks: 0          IO Block: 4096   regular empty file
Device: 801h/2049d      Inode: 291901      Links: 1
Access: (0664/-rw-rw-r--)  Uid: ( 1000/    mike)   Gid: ( 1000/    mike)
Access: 2022-10-11 21:50:48.463740676 +0000
Modify: 2022-10-11 21:50:48.463740676 +0000
Change: 2022-10-11 21:50:48.463740676 +0000
 Birth: 2022-10-11 21:50:48.463740676 +0000
```

## Managing directories

### Current working directory

**Synopsis**:
```bash
pwd
```

**Examples**:
```bash
mike@lfcs:~$ pwd
/home/mike
```

### Changing the working directory

**Synopsis**:
```bash
cd
```

**Examples**:
```bash
mike@lfcs:~$ pwd
/home/mike
mike@lfcs:~$ cd files/
mike@lfcs:~/files$ pwd
/home/mike/files
```

### Creating directories

**Synopsis**:
```bash
mkdir [OPTION]... DIRECTORY...
```

```bash
mkdir <dirname>
```

If creating a more complex structure, for example if some aditional directories in the given path don't exist, use `-p` to create them

```bash
mike@lfcs:~$ tree
.

0 directories, 0 files
mike@lfcs:~$ mkdir 1/2/3/4/5
mkdir: cannot create directory ‘1/2/3/4/5’: No such file or directory
mike@lfcs:~$ mkdir 1/2/3/4/5 -p
mike@lfcs:~$ tree
.
└── 1
    └── 2
        └── 3
            └── 4
                └── 5

5 directories, 0 files
```

This command won't fail if any of the directories don't exist.

### Copying directories

``` bash
cp olddir/ newdir/ -r
cp olddir/ newdir/ --recursive
```

### Moving directories

```bash
mv olddir/ newdir/ -r
mv olddir/ newdir/ --recursive
```

### Removing directories

```bash
rm -r dirname/
rm --recursive dirname/
```
