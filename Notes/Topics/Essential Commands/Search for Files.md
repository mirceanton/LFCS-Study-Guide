# Search for files

```bash
find [path] [parameters]
```

## ...by name

```bash
find . -name file.txt #case sensitive
find . -iname file.txt #case insensitive
find . -name file* # all files starting with file...
```

## ...by modified time

- Files modified 5 minutes ago
  ```bash
  find . -mmin 5
  ```

- Files modified in the last 5 minutes
  ```bash
  find . -mmin -5
  ```

- Find files modified MORE than 5 minutes ago
  ```bash
  find . -mmin +5
  ```

- Files with permissions changed in the last 5 mintues
  ```bash
  find . -cmin -5
  ```

- Find files modified in the last 2 days
  ```bash
  find . -mtime 2
  ```

## ...based on size

- Search for files larger than 100K
  ```bash
  find . -size +100K
  ```

- Search for files smaller than 100K
  ```bash
  find . -size -100K
  ```

- Search for files exactly 100K
  ```bash
  find . -size 100K
  ```

## ...based on permissions

- Search for files with EXACTLY the given permissions
  ```bash
  find . -perm 664
  find . -perm u=rw,g=rw,o=r
  ```

- Search for files with AT LEAST the given permissions
  ```bash
  find . -perm -664
  find . -perm -u=rw,g=rw,o=r
  ```

- Search for files with ANY of the given permissions
  ```bash
  find . -perm /664
  find . -perm /u=rw,g=rw,o=r
  ```

- Search for files with [[SUID]] set
  ```bash
  find . -perm /4000
  find . -perm /u=s
  ```

- Search for files with [[SGID]] set
  ```bash
  find . -perm /2000
  find . -perm /g=s
  ```

- Search for files with either [[SUID]], [[SGID]] or both set
  ```bash
  find . -perm /6000
  find . -perm /g+s,u+s
  ```

- Search for directories with [[Sticky Bit]] set
  ```bash
  find . -perm /1000
  ```

## Negating the search condition

To negate a search condition, use the `-not` flag

```bash
find . -not -name "file*" # all files that do not start with "file..."
```
