# Scheduling Jobs

Tools:

- cron -> set up recurring jobs (can miss jobs)
- anacron -> set up recurring jobs (doesn't miss jobs)
- at -> scheduling one-shot jobs

## Cron

### crontab

Sample jobs syntax: `cat /etc/crontab`

- show crontab for current user: `crontab -l`
- edit crontab for current user: `crontab -e`
- edit crontab for a given user: `crontab -e -u <user>`
- remove crontab for current user: `crontab -r`
- remove crontab for a given user: `crontab -r -u <user>`

**Examples**:

### Cron directories

- hourly: `/etc/cron.hourly/`
- daily: `/etc/cron.daily/`
- weekly: `/etc/cron.weekly/`
- monthly: `/etc/cron.monthly/`

## Anacron

- edit anacrontab: `vim /etc/anacrontab`
- verify anacrontab: `anacron -T`
- force anacron to run jobs for today: `anacron -n -f`

**Examples**:

## At

- run job at 3PM: `at 15:00`
- run job on specific date: `at 'September 15 2023'`
- run job on specific date, at specific time: `at '15:00 September 15 2023'`
- run job in 10 minutes: `at 'now + 10 minutes'`

- see scheduled jobs: `atq`

- inspect job: `at -c <job number>`
- remove scheduled job: `atrm <job number>`
