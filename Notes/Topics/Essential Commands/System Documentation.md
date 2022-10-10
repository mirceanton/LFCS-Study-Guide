Section: [[Essential Commands]]

## If you know what command to use:

### Use the `--help` flag on most commands

Most commands in linux have a `-h` or `--help` flag to show some quick reference:

```bash
$ cat --help
Usage: cat [OPTION]... [FILE]...
Concatenate FILE(s) to standard output.

With no FILE, or when FILE is -, read standard input.

  -A, --show-all           equivalent to -vET
  -b, --number-nonblank    number nonempty output lines, overrides -n
  -e                       equivalent to -vE
  -E, --show-ends          display $ at end of each line
  -n, --number             number all output lines
  -s, --squeeze-blank      suppress repeated empty output lines
  -t                       equivalent to -vT
  -T, --show-tabs          display TAB characters as ^I
  -u                       (ignored)
  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB
      --help     display this help and exit
      --version  output version information and exit

Examples:
  cat f - g  Output f's contents, then standard input, then g's contents.
  cat        Copy standard input to standard output.
```
 
### Read the man pages

``` bash
man <command>
```

## If you don't know what command to use

The apropos command can show a list of commands that have the given keyword in their manpages

```bash
$ apropos ssh
authorized_keys (5)  - OpenSSH daemon
cryptsetup-ssh (8)   - manage LUKS2 SSH token
EVP_KDF-SSHKDF (7ssl) - The SSHKDF EVP_KDF implementation
git-shell (1)        - Restricted login shell for Git-only SSH access
rcp (1)              - OpenSSH secure file copy
rlogin (1)           - OpenSSH remote login client
rsh (1)              - OpenSSH remote login client
scp (1)              - OpenSSH secure file copy
sftp (1)             - OpenSSH secure file transfer
sftp-server (8)      - OpenSSH SFTP server subsystem
slogin (1)           - OpenSSH remote login client
ssh (1)              - OpenSSH remote login client
ssh-add (1)          - adds private key identities to the OpenSSH authentication agent
ssh-agent (1)        - OpenSSH authentication agent
ssh-argv0 (1)        - replaces the old ssh command-name as hostname handling
ssh-copy-id (1)      - use locally available keys to authorise logins on a remote machine
ssh-import-id (1)    - retrieve one or more public keys from a public keyserver and append them to the current user's authorized_keys file (or some other specified file)
ssh-import-id-gh (1) - retrieve one or more public keys from a public keyserver and append them to the current user's authorized_keys file (or some other specified file)
ssh-import-id-lp (1) - retrieve one or more public keys from a public keyserver and append them to the current user's authorized_keys file (or some other specified file)
ssh-keygen (1)       - OpenSSH authentication key utility
ssh-keyscan (1)      - gather SSH public keys from servers
ssh-keysign (8)      - OpenSSH helper for host-based authentication
ssh-pkcs11-helper (8) - OpenSSH helper for PKCS#11 support
ssh-sk-helper (8)    - OpenSSH helper for FIDO authenticator support
ssh_config (5)       - OpenSSH client configuration file
sshd (8)             - OpenSSH daemon
sshd_config (5)      - OpenSSH daemon configuration file
XtIsShell (3)        - obtain and verify a widget's class
```

- If the apropos command is not working, refresh the database with
  ``` bash
  sudo mandb
  ```
