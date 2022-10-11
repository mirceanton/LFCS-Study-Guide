# Archive, backup, compress, unpack, and uncompress files

Backup Workflow: archive -> compress -> copy to backup location

Restore Workflow: copy from backup location -> uncompress -> unpack

## Archiving && Unpacking

### Create an archive

#### List files in an archive

**Synopsis**:

```bash
tar --list --file archive.tar
# or
tar -tf archive.tar
# or
tar tf archive.tar
```

#### Archiving a file/directory

**Synopsis**:
```bash
tar --create --file archive.tar file1
# or
tar cf archive.tar file1
```

**Examples**:

- Archiving a file
```bash
mike@lfcs:~$ ls
file1  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ tar --create --file file1.tar file1
mike@lfcs:~$ ls
file1  file1.tar  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ tar --list --file file1.tar 
file1
```

- Archiving a directory
```bash
mike@lfcs:~$ ls
files
mike@lfcs:~$ ls files/
file1  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ tar --create --file files.tar files/
mike@lfcs:~$ ls
files  files.tar
mike@lfcs:~$ tar --list --file files.tar 
files/
files/file3
files/file4
files/file8
files/file6
files/file5
files/file1
files/file7
files/file9
files/file2
```

#### Adding another file to an already existing archive

**Synopsis**:
```bash
tar --append --file archive.tar file2
# or
tar rf archive.tar file2
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1  file2  file3  file4  file5  file6  file7  file8  file9  files.tar
mike@lfcs:~$ tar --list --file files.tar 
file1
mike@lfcs:~$ tar --append --file files.tar file2
mike@lfcs:~$ tar --list --file files.tar 
file1
file2
```

#### Unpack an archive

**Synopsis**:
```bash
tar --extract --file archive.tar
# or
tar xf archive.tar
```

#### Unpack an archive in a given directory

**Synopsis**:
```bash
tar --extract --file archive.tar --directory /tmp/
# or
tar xf archive.tar -C /tmp/
```

## Compress && Uncompress

### `gzip`

#### Compress the file and remove the original

**Synopsis**:
```bash
gzip <filename>
```

**Examples**:
```bash
mike@lfcs:~$ gzip file1
mike@lfcs:~$ ls
file1.gz  file2  file3  file4  file5  file6  file7  file8  file9
```

#### Compress the file and keep the original

**Synopsis**:
```bash
gzip --keep <filename>
gzip -k <filename>
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.gz  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ gzip file2 --keep
mike@lfcs:~$ ls
file1.gz  file2  file2.gz  file3  file4  file5  file6  file7  file8  file9
```

#### List compressed file contents

**Synopsis**:
```bash
gzip --list archive.gz
gzip -l archive.gz
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.gz  file2  file2.gz  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ gzip --list file2.gz 
         compressed        uncompressed  ratio uncompressed_name
                 26                   0   0.0% file2
```

#### Uncompress the file

**Synopsis**:
```bash
gzip --decompress archive.gz
gzip -d archive.gz
gunzip archive.gz
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.gz  file2  file2.gz  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ gunzip file1.gz 
mike@lfcs:~$ ls
file1  file2  file2.gz  file3  file4  file5  file6  file7  file8  file9
```

### `bzip2`

#### Compress the file and remove the original

**Synopsis**:
```bash
bzip2 <filename>
```

**Examples**:
```bash
mike@lfcs:~$ bzip2 file1
mike@lfcs:~$ ls
file1.bz2  file2  file3  file4  file5  file6  file7  file8  file9
```

#### Compress the file and keep the original

**Synopsis**:
```bash
bzip2 --keep  <filename>
bzip2 -k  <filename>
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.bz2  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ bzip2 file2 --keep
mike@lfcs:~$ ls
file1.bz2  file2  file2.bz2  file3  file4  file5  file6  file7  file8  file9
```

#### Uncompress the file

**Synopsis**:
```bash
bzip2 --decompress  <filename>.bz2
bzip2 -d  <filename>.bz2
bunzip  <filename>.bz2
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.bz2  file2  file2.bz2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ bunzip file1.bz2 
mike@lfcs:~$ ls
file1  file2  file2.bz2  file3  file4  file5  file6  file7  file8  file9
```

### `xz`

#### Compress the file and remove the original

**Synopsis**:
```bash
xz  <filename>
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ xz file1 
mike@lfcs:~$ ls
file1.xz  file2  file3  file4  file5  file6  file7  file8  file9
```

#### Compress the file and keep the original

**Synopsis**:
```bash
xz --keep <filename>
xz -k <filename>
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.xz  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ xz file2 --keep
mike@lfcs:~$ ls
file1.xz  file2  file2.xz  file3  file4  file5  file6  file7  file8  file9
```

#### List compressed file contents

**Synopsis**:
```bash
xz --list <filename>.xz
xz -l <filename>.xz
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.xz  file2  file2.xz  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ xz --list file1.xz 
Strms  Blocks   Compressed Uncompressed  Ratio  Check   Filename
    1       0         32 B          0 B    ---  CRC64   file1.xz
```

#### Uncompress the file

**Synopsis**:
```bash
xz --decompress <filename>.xz
xz -d <filename>.xz
unxz <filename>.xz
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1.xz  file2  file2.xz  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ unxz file1.xz 
mike@lfcs:~$ ls
file1  file2  file2.xz  file3  file4  file5  file6  file7  file8  file9
```

### `zip`

#### Compress the file

**Synopsis**:
```bash
zip <filename>.zip <filename>
```

**Examples**:
```bash
mike@lfcs:~$ ls
file1  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ zip file1.zip file1
  adding: file1 (stored 0%)
mike@lfcs:~$ ls
file1  file1.zip  file2  file3  file4  file5  file6  file7  file8  file9
```

#### Compress the directory

**Synopsis**:
```bash
zip -r <dirname>.zip <dirname>/
```

**Examples**:
```bash
mike@lfcs:~$ ls
files
mike@lfcs:~$ ls files/
file1  file2  file3  file4  file5  file6  file7  file8  file9
mike@lfcs:~$ zip -r files.zip files/
  adding: files/ (stored 0%)
  adding: files/file3 (stored 0%)
  adding: files/file4 (stored 0%)
  adding: files/file8 (stored 0%)
  adding: files/file6 (stored 0%)
  adding: files/file5 (stored 0%)
  adding: files/file1 (stored 0%)
  adding: files/file7 (stored 0%)
  adding: files/file9 (stored 0%)
  adding: files/file2 (stored 0%)
mike@lfcs:~$ ls
files  files.zip
```

#### Uncompress the file

**Synopsis**:
```bash
unzip archive.zip
```

**Examples**:
```bash
mike@lfcs:~$ ls
files.zip
mike@lfcs:~$ unzip files.zip 
Archive:  files.zip
   creating: files/
 extracting: files/file3
 extracting: files/file4
 extracting: files/file8
 extracting: files/file6
 extracting: files/file5
 extracting: files/file1
 extracting: files/file7
 extracting: files/file9
 extracting: files/file2
mike@lfcs:~$ ls
files  files.zip
mike@lfcs:~$ ls files
file1  file2  file3  file4  file5  file6  file7  file8  file9
```

### Main differences

``` ad-note
While `zip` can compress directories directly, `gzip`, `bzip2` and `xz` cannot. As such, they are used together with `tar` to archive and then compress.
```

Helpful one-liners:
- Archive and `gzip`
  ```bash
  tar --create --gzip --file archive.tar.gz file1
  tar czf archive.tar.gz file1
  ```

- Archive and `bzip`
  ```bash
  tar --create --bzip2 --file archive.tar.bz2 file1
  tar cjf archive.tar.bz2 file1
  ```

- Archive and `xz`
  ```bash
  tar --create --xz --file archive.tar.xz file1
  tar cJf archive.tar.xz file1
  ```

- Archive and auto compress
  ```bash
  tar --create --autocompress --file archive.tar.gz file1
  tar caf archive.tar.gz file1
  ```

- Unarchive and uncompress
```bash
tar --extract --file archive.tar.gz
tar xf archive.tar.gz
```

## Backup

### Backing up files and directories

- FROM local TO local
```bash
rsync -a /path/to/source/ /path/to/dest/
```

- FROM local TO remote
```bash
rsync -a /path/to/local/ username@ip:/path/to/remote/
```

- FROM remote TO remote
```bash
rsync -a username1@ip1:/path/to/source/ username2@ip2:/path/to/dest/
```

### Backing up partitions

- Back up `/dev/sda` partition to a `diskimage.raw` file
```bash
dd if=/dev/sda of=diskimage.raw bs==1M status=progress
```

- Restore `diskimage.raw` to `/dev/sda`
```bash
dd if=diskimage.raw of=/dev/sda bs==1M status=progress
```
