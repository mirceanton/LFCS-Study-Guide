# Manipulating file contents

## Printing file contents

- Start to finish
  ```bash
  cat <filename>
  ```

- Finish to start
  ```bash
  tac <filename>
  ```

- Last N lines of a file
  ```bash
  tail -n <N> <filename>
  ```

- First N lines of a file
  ```bash
  head -n <N> <filename>
  ```

- Paginating through a large file
  ```bash
  less <filename>
  ```

## Find and Replace

- First occurence
  ```bash
  sed 's/<old>/<new>/' <filename> # will print output to stdout
  ```

- All occurences
  ```bash
  sed 's/<old>/<new>/g' <filename> # will print output to stdout
  ```

- In place
  ```bash
  sed -i 's/<old>/<new>/' <filename>
  sed --in-place 's/<old>/<new>/' <filename>
  ```

## Extract specific sections

- Column X of a file
  ```bash
  cut -d ',' -f <X> <filename> # for comma-separated-values
  cut -d ' ' -f <X> <filename> # for space-separated values
  ```

- All lines, sorted
  ```bash
  sort <filename>
  ```

- Removed consecutive duplicates
  ```bash
  uniq <filename>
  ```
  > Note: Only remove CONSECUTIVE duplicates, not ALL duplicates

- Only unique lines
  ```bash
  sort <filename> | uniq
  ```

## Comparing files

- "traditional"
  ```bash
  diff <file1> <file2>
  ```

- side by side
  ```bash
  sdiff <file1> <file2>
  ```

## Searching files

```bash
grep [options] [search_pattern] [file]
```

- Search case sensitive
```bash
mike@lfcs:~/LFCS-Study-Guide$ grep 'study' README.md 
LFCS-study-guide
An obsidian vault I created while studying for the LFCS Certification.
```

- Search case insensitive
```bash
mike@lfcs:~/LFCS-Study-Guide$ grep 'lfcs' README.md 
mike@lfcs:~/LFCS-Study-Guide$ grep -i 'lfcs' README.md 
LFCS-study-guide
An obsidian vault I created while studying for the LFCS Certification.
mike@lfcs:~/LFCS-Study-Guide$ 
```

- Search all files in directory
```bash
mike@lfcs:~/LFCS-Study-Guide$ grep "Manipulating file contents" -r ./
./Notes/Topics/Essential Commands/Compare and manipulate file content.md:# Manipulating file contents
```

- Invert search query
```bash
mike@lfcs:~/LFCS-Study-Guide$ grep -vi 'lfcs' README.md 
================


![mindmap](mindmap.png)
```

- Only print matching
```bash
mike@lfcs:~/LFCS-Study-Guide$ grep -oi 'lfcs' README.md 
LFCS
LFCS
```
