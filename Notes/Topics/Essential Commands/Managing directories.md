Section [[Essential Commands]]

## Managing directories

### Current working directory

```bash
mike@Dev~$ pwd
/home/mike
```

### Changing the current directory

```bash
cd dirname/
```

### Creating directories 

```bash
mkdir <dirname>
```

If creating a more complex structure, for example if some aditional directories in the given path don't exist, use `-p` to create them

```bash
mkdir -p /tmp/1/2/3/4/5/5/6/7/8/9
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

## See also

- [[Managing Files]]
- [[File Permissions]]
