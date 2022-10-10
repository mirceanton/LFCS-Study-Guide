Section: [[Essential Commands]]

### Soft Links

Soft links are basically like a shortcut in windows. They reference the path to another file specified at link creation.

As opposed to [[Hard Links]], which point to the inode, the soft link points to the original file which in turn points to the inode.

```bash
ln -s /path/to/file /path/to/softlink
```

## See Also

- [[Hard Links]]
