# Create and manage hard and soft links

## Hard Links

- Hard links are another file instance referencing the same inode as the original file. Basically, they are two files pointing to the same data on disk.
- The actual data on disk does not get removed unless ALL THE LINKS are removed.

## Creating a hard link

```bash
ln /path/to/link /path/to/hardlink
```

## Limitations

- only files can be hard linked, not directories
- only files on the same fielsystem can be linked

## Soft Links

Soft links are basically like a shortcut in windows. They reference the path to another file specified at link creation.

As opposed to [[Hard Links]], which point to the inode, the soft link points to the original file which in turn points to the inode.

```bash
ln -s /path/to/file /path/to/softlink
```
