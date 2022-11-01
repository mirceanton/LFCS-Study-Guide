# Managin an IMAP Server

- Install the IMAP server
```bash
sudo dnf install dovecot
```

- Enable and start the service
```bash
sudo systemctl enable --now dovecot
```

- Allow IMAP traffic through the firewall
```bash
sudo firewall-cmd --add-service=imap --add-service=imaps --permanent
```

- Edit the main configuration file
```bash
sudo vim /etc/dovecot/dovecot.conf
```

> Typical actions:  
>  - protocols  
>  - bind address  

- Additional config files are found at `/etc/dovecot/conf.d/`

- Change the default ports
```bash
sudo vim /etc/dovecot/conf.d/10-master.conf
```
- Change default mailbox locations
```bash
sudo vim /etc/dovecot/conf.d/10-mail.conf
```
- Configure TLS
  - `ssl = required` -> only work with TLS
  - `ssl = yes` -> work with and without TLS
  - `ssl = no` -> only work without TLS
```bash
sudo vim /etc/dovecot/confd./10-ssl.conf
```

## Email Aliases

- Install postfix
```bash
sudo dnf install postfix
```
- Enable and start the service
```bash
sudo systemctl enable --now postfix
```

- Send mail to user
```bash
sendmail user@domain <<< "email body here"
```

- Check mail for user
```bash
cat /var/spool/mail/<USER>
```

- Create email alias
```bash
sudo vim /etc/alias
```

> Typical actions:  
>  - alias sales to mike: `sales: mike`  
>  - alias support to mike and tony: `support: mike,tony`  
>  - alias external to mike@somedomain.tld: `external: mike@somedomain.tld`  

- Reload aliases
```bash
sudo newaliases
```
