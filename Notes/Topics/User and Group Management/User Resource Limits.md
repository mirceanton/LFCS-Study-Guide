# Managing User Resource Limits

Resource limits file: `/ets/security/limits.conf`.

The file itself is thoroughly documented, so refer to it for more details:

```bash
vi /etc/security/limits.conf
```

Command: `ulimit`

## Configuration Format

```bash
<domain>    <type>      <item>      <value>
user        hard|soft|-   [see file]  N
@group      hard|soft|-   [see file]  N
```

- Hard limits are the upper bound for a given limit.
- Soft limits are a "soft" bound, in the sense that initially the limit is set to that value, but it can be modified by the user to any other value (smaller than the hard limit) if needed.
- `-` set both the hard and soft limits

**Example**:

- Limit the developers group to only run 30 processes
```bash
@developers   hard    nproc   30
```

- Limit john only 5 seconds of CPU time
```bash
@developers   hard    cpu   5
```

## See limits for the current session

```bash
mike@lfcs:~/LFCS-Study-Guide$ ulimit -a
real-time non-blocking time  (microseconds, -R) unlimited
core file size              (blocks, -c) 0
data seg size               (kbytes, -d) unlimited
scheduling priority                 (-e) 0
file size                   (blocks, -f) unlimited
pending signals                     (-i) 3721
max locked memory           (kbytes, -l) 124088
max memory size             (kbytes, -m) unlimited
open files                          (-n) 1048576
pipe size                (512 bytes, -p) 8
POSIX message queues         (bytes, -q) 819200
real-time priority                  (-r) 0
stack size                  (kbytes, -s) 8192
cpu time                   (seconds, -t) unlimited
max user processes                  (-u) 3721
virtual memory              (kbytes, -v) unlimited
file locks                          (-x) unlimited
```

## Modifying limits

To change limits on the fly for the current session, use the `ulimit` command.

Refer to the manpage or help flag for more details:

```bash
ulimit --help
```

```bash
man ulimit
```
