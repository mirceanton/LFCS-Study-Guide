# Analyze text using basic regular expressions

## Basic Operators

### Operator List

- Starts with: `^` -> `^cat` => **cat**nip
- Ends with: `$` -> `cat$` => octo**cat**
- Match exactly one: `.` `ca.t` => **cat**
- Match 0 or any: `*` -> `ca*t` => **ct**, **c**a**t**, **c**aa**t**

### Examples

```bash
mike@lfcs:~$ cat sample.txt 
cat
cut
cattle
octocat
catnip
```

- Find all lines that start with "cat"
```bash
mike@lfcs:~$ grep "^cat" sample.txt 
cat
cattle
catnip
```

- Find all lines that end with "cat"
```bash
mike@lfcs:~$ grep "cat$" sample.txt 
cat
octocat
```

- Find all words that start with "c" and end with "t"
```bash
mike@lfcs:~$ grep -w "c.t" sample.txt 
cat
cut
```

- Find all words that start with "ca" and are followed by 0 or more "t"
```bash
mike@lfcs:~$ grep "cat*" sample.txt 
ca
cat
cattle
octocat
catnip
```

## Extended Regex Operators

> Note: These operators require either using `egrep` or `grep -E` to enable extended regex

### Operator List

- Match 1 or more: `+`  
  -> `ca+t` => **cat**, **caat**
- Make previous character optional: `?`  
  -> `ca?t` => **ct**, **cat**
- Match previous character a specific amount of times: `{}`  
  -> `ca{1,3}t` => **cat**, **caat**, **caaat**  
  -> `ca{1}t` => **cat**  
  -> `ca{3}t` => **caaat**
- Match any of the two: `|`  
  -> `cat|cut` => **cat**, **cut**
- Match characters in range/set: `[]`  
  -> `c[a-c]t` => **cat**, **cbt**, **cct**
- Negate range/set: `[^]`  
  -> `c[^u]t` => ~~**cut**~~, **cat**
- Subexpressions: `()`  
  -> `(c[a-c]t)+` => **cat**, **catcbt**...

### Examples

- Find all words that start with "ca" and are followed by 1 or more "t"
```bash
mike@lfcs:~$ egrep 'cat+' sample.txt 
cat
cattle
octocat
catnip
```

- Find all words that contain "ca" followed by 1 or no "t"
```bash
mike@lfcs:~$ egrep "cat?" sample.txt 
ca
cat
cattle
octocat
catnip
```

- Find all words with at least 1 consecutive "t"
```bash
mike@lfcs:~$ egrep "t{1,}" sample.txt 
cat
cut
cattle
octocat
catnip
```

- Find all words with at most 2 consecutive "t"
```bash
mike@lfcs:~$ egrep "t{,2}" sample.txt 
ca
cat
cut
cattle
octocat
catnip
```

- Find all words with exactly 2 consecutive "t"
```bash
mike@lfcs:~$ egrep "t{2}" sample.txt 
cattle
```

- Find words matching either "cat" or "cut"
```bash
mike@lfcs:~$ egrep "cat|cut" sample.txt 
cat
cut
cattle
octocat
catnip
```

- Find words matching either "cat" or "cut"
```bash
mike@lfcs:~$ egrep "c[a,u]t" sample.txt 
cat
cut
cattle
octocat
catnip
```

- Find all http links, excluding https:
```bash
egrep "http[^s]" file.txt
```
