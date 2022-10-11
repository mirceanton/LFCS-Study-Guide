# Input-Output redirection

- Redirect ALL output from a command to a file
```bash
command1 > file.txt # overwrite
command1 >> file.txt # append
```

- Redirect stdout to a file
```bash
command1 1> file.txt
command1 1>> file.txt
```

- Redirect stderr to a file
```bash
command1 2> file.txt
command1 2>> file.txt
```

- Redirect stderr to stdout
```bash
command 1> all_output.txt 2>&1
```

- Redirect file to command input

```bash
command1 < file.txt
```

- Redirect command output to command input
```bash
source <(kubectl completion bash)
```

- Pipe command output to another command
```bash
cat long_file.txt | more
```
