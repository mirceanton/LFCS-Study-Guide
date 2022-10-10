Section: [[Essential Commands]]

### Hard Links

- Hard links are another file instance referencing the same inode as the original file. Basically, they are two files pointing to the same data on disk.
- The actual data on disk does not get removed unless ALL THE LINKS are removed.

## Creating a hard link

```bash
ln /path/to/link /path/to/hardlink
```

## Limitations

- only files can be hard linked, not directories
- only files on the same fielsystem can be linked

## See also

- [[Soft Links]]
