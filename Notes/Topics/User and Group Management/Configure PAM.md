# Configure PAM

- PAM = pluggable authentication modules

Configuration files:
- `/etc/pam.conf`
- `/etc/pam.d/*`

**Examples**:

- Edit the PAM configuration for the `su` command

```bash
vi /etc/pam.d/su
```

For more details about the pam configuration and the syntax of the conf file, refer to the man pages

```bash
man pam
```

For more information about the individual modules, refer to their respective man pages:

```bash
mike@lfcs:~/LFCS-Study-Guide$ man pam #<TAB><TAB>
pam                   pam_faillock          pam_motd              pam_systemd
pam-auth-update       pam_filter            pam_namespace         pam_time
pam.conf              pam_ftp               pam_namespace_helper  pam_timestamp
pam.d                 pam_getenv            pam_nologin           pam_timestamp_check
pam_access            pam_group             pam_permit            pam_tty_audit
pam_cap               pam_issue             pam_pwhistory         pam_umask
pam_debug             pam_keyinit           pam_rhosts            pam_unix
pam_deny              pam_lastlog           pam_rootok            pam_userdb
pam_echo              pam_limits            pam_securetty         pam_usertype
pam_env               pam_listfile          pam_selinux           pam_warn
pam_env.conf          pam_localuser         pam_sepermit          pam_wheel
pam_exec              pam_loginuid          pam_setquota          pam_xauth
pam_extrausers        pam_mail              pam_shells            
pam_faildelay         pam_mkhomedir         pam_succeed_if
```
