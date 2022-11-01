# Manage Processes

- Show running processes in the current session
```bash
ps
```

- Show all running processes
```bash
ps aux
```

- Task manager-style output
```bash
top
```

- Show details for a given process
```bash
ps u <PID>
```

- Show processes started by user
```bash
ps u -U <username>
```

- Show processes by name
```bash
pgrep -a ...
```

- Start process with a given nice value
```bash
nice -n <value> <command>
```

- Show nice values in `ps`
```bash
ps lax
```

- Show tree-like structure
```bash
ps faux
```

- Change nice value of process
```bash
renice <nice value> <PID>
```

- Show signals that can be sent to a process
```bash
kill -L
```

- Send signal to process
```bash
kill -<SIGNAL> <PID>
```

- Kill process based on name
```bash
pkill <name>
```

- Send signal to all processes that contain `<NAME>` in their name
```bash
pkill -<SIGNALL> <NAME>
```

- Send process to background
```bash
<command> &
```

- Show all background processes
```bash
jobs
```

- Get process from background
```bash
fg <JOB NUMBER>
```

- Resume a frozen background process
```bash
bg <JOB NUMBER>
```

- Show files used by process
```bash
lsof -p <PID>
```

- Show processes using a file
```bash
lsof <filepath>
```
