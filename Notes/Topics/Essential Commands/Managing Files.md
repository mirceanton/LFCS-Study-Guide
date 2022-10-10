Section: [[Essential Commands]]

## Managing files

### Listing directory contents

- Regular listing `ls`
- Show hidden files `ls -a`
- Long listing format: `ls -l`
- Liste xact modified time: `ls --full-time`

### Creating files: 

- Creating an empty file:
  ```bash
  touch filename
  ```

- Creating a file with some predefined content:
  ```bash
  echo "some content" > filename
  ```

### Copying files: `cp oldfile newfile`

- Preserve all file attributes when copying:
  ``` bash
  cp --preserve=all source dest
  ```

### Moving files: 

```bash
mv /path/to/oldfile /path/to/newfile
```

### Removing a file

```bash
rm /path/to/file
```

### Getting information about files or directories:

![[Pasted image 20221010165707.png]]

## See Also

- [[Managing directories]]
- [[File Permissions]]
