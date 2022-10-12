# System-wide Environment Profiles

Show current environment variables: `env`

## Set environment variables

### For the current shell session

```bash
mike@lfcs:~/LFCS-Study-Guide$ VARIABLE=123
mike@lfcs:~/LFCS-Study-Guide$ echo $VARIABLE
123
```

### For all users

Edit the `/etc/environment` file.

```bash
mike@lfcs:~/LFCS-Study-Guide$ echo "VARIABLE=1234" | sudo tee /etc/environment 
VARIABLE=1234
mike@lfcs:~/LFCS-Study-Guide$ source /etc/environment 
mike@lfcs:~/LFCS-Study-Guide$ echo $VARIABLE
1234
```

### For logged in user

- Edit the `~/.bashrc` file.

```bash
mike@lfcs:~/LFCS-Study-Guide$ echo "VARIABLE=12345" >> ~/.bashrc 
mike@lfcs:~/LFCS-Study-Guide$ source ~/.bashrc 
mike@lfcs:~/LFCS-Study-Guide$ echo $VARIABLE
12345
```

## Execute file on login

Add `*.sh` scripts to `/etc/profile.d/` directory.
