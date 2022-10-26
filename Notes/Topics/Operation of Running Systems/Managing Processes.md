# Manage Processes

- show running processes in the current session: `ps`
- show all running processes: `ps aux`

- task manager-style output: `top` / `htop`
- show details for a given process: `ps u <PID>`
- show processes started by user: `ps u -U <username>`
- show processes by name: `pgrep -a ...`

- start process with a given nice value: `nice -n <value> <command>`
- show nice values in `ps`: `ps lax`
- show tree-like structure: `ps faux`

- change nice value of process: `renice <nice value> <PID>`

- show signals that can be sent to a process: `kill -L`
- send signal to process: `kill -<SIGNAL> <PID>`
- kill process based on name: `pkill <name>`
- send signal to all processes that contain `<NAME>` in their name: `pkill -<SIGNALL> <NAME>`

- send process to background: `<command> &`
- check background processes: `jobs`
- get process from background: `fg <JOB NUMBER>`
- resume frozen background process: `bg <JOB NUMBER>`

- show files used by process: `lsof -p <PID>`
- show processes using a file: `lsof <filepath>`
