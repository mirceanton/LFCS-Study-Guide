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

## Find and replace

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

## Searching file contents

```bash
grep
```
