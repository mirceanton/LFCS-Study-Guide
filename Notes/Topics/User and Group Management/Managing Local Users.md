# Managing Local Users

## Create a Local Account

```bash
useradd [username] [options]
```

The `useradd john` command creates the following resources:
- creates `john` account
- creates `john` group
- sets main group of `john` user to be `john`
- creates `/home/john` directory with the contents of `/etc/skel`
- sets default shell of `john` to `/bin/bash`

To see defaults for account creation:

```bash
mike@lfcs:~$ useradd --defaults
GROUP=100
HOME=/home
INACTIVE=-1
EXPIRE=
SHELL=/bin/sh
SKEL=/etc/skel
CREATE_MAIL_SPOOL=no
```

Or take a look at `/etc/login.defs`.

**Useful flags**:

- Set custom home dir: `--home-dir /home/newdir`
- Set custom shell: `--shell /bin/othershell` / `-s`
- Append other groups: `--groups group1,group2` / `-G`
- Set custom uid: `--uid 1001` / `-u`
- Create system account: `--system`

## Modify a Local User Account

### General Modifications

```bash
usermod [options] [username]
```

- Change user home:
```bash
usermod --home /home/new john
```

- Change user home (and copy files):
```bash
usermod --home /home/new --move-home john
```

- Change user name (john to jane):
```bash
usermod --login jane john
```

- Change default shell:
```bash
usermod --shell /bin/othershell john
```

- Disable account:
```bash
usermod --lock john # or -L
```

- Enable account:
```bash
usermod --unlock john # or -U
```

- Set expiration:
```bash
usermod --expiredate YYYY-MM-DD john
```

- Add user to group:
```bash
usermod -append --groups group john # or -aG
```

### Password modifications

```bash
passwd [options] [username]
```

- Change user password:
```bash
passwd john
```

- Delete user password:
```bash
passwd --delete # or -d
```

- Lock user:
```bash
passwd --lock john # or -l
```

- Unlock user:
```bash
passwd --unlock john # or -u
```

- Force expire a password:
```bash
passwd --expire john # or -e
```

- Set password max age:
```bash
passwd --maxdays 5
```

- Set password warning age:
```bash
passwd --warndays 5
```

> Note: account expiration block user login. Password expiration forces user to change password.

## Delete a Local User Account

```bash
userdel [username] [options]
```

The `userdel john` command will only delete the user and group (if empty).

To also remove the home directory, use the `--remove`/`-r` flag.

## Useful commands

- Show logged in user username: `whoami`
- Show uid, gid, groups etc. of logged in user: `id`
