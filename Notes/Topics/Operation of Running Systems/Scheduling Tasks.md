# Scheduling Jobs

Tools:

- cron -> set up recurring jobs (can miss jobs)
- anacron -> set up recurring jobs (doesn't miss jobs)
- at -> scheduling one-shot jobs

## Cron

### crontab

Sample jobs syntax: `cat /etc/crontab`

- Show the crontab for the current user
```bash
crontab -l
```

- Edit the crontab for the current user
```bash
crontab -e
```

- Edit the crontab for a given user
```bash
crontab -e -u <user>
```

- Remove the crontab for the current user
```bash
crontab -r
```

- Remove the crontab for a given user
```bash
crontab -r -u <user>
```

**Examples**:

### Cron directories

- hourly: `/etc/cron.hourly/`
- daily: `/etc/cron.daily/`
- weekly: `/etc/cron.weekly/`
- monthly: `/etc/cron.monthly/`

## Anacron

- Edit anacrontab
```bash
vim /etc/anacrontab
```

- Verify anacrontab
```bash
anacron -T
```

- Force anacron to run jobs for today
```bash
anacron -n -f
```

## At

- run job at 3PM
```bash
at 15:00
```

- run job on specific date
```bash
at 'September 15 2023'
```

- run job on specific date
```bash
at specific time: `at '15:00 September 15 2023'
```

- run job in 10 minutes
```bash
at 'now + 10 minutes'
```

- See scheduled jobs
```bash
atq
```

- Inspect job
```bash
at -c <job number>
```

- Remove scheduled job
```bash
atrm <job number>
```
