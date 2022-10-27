# Managin an IMAP Server

- install imap server: `sudo dnf install dovecot`
- enable and start service: `sudo systemctl enable --now dovecot`
- allow IMAP traffic: `sudo firewall-cmd --add-service=imap --add-service=imaps --permanent`

- Main configuration file: `/etc/dovecot/dovecot.conf`
  - protocols
  - bind address
- Categorized config files: `/etc/dovecot/conf.d/`

- Change the default ports: `sudo vim /etc/dovecot/conf.d/10-master.conf`
- Change default mailbox locations: `sudo vim /etc/dovecot/conf.d/10-mail.conf`
- Configure TLS: `sudo vim /etc/dovecot/confd./10-ssl.conf`
  - `ssl = required` -> only work with TLS
  - `ssl = yes` -> work with and without TLS
  - `ssl = no` -> only work without TLS

## Email Aliases

- install postfix: `sudo dnf install postfix`
- enable and start service: `sudo systemctl enable --now postfix`

- send mail to user: `sendmail user@domain <<< "email body here"`
- check mail for user: `cat /var/spool/mail/<USER>`

- create email alias: `sudo vim /etc/alias`
  - alias sales to mike: `sales: mike`
  - alias support to mike and tony: `support: mike,tony`
  - alias external to mike@somedomain.tld: `external: mike@somedomain.tld`

- reload aliases: `sudo newaliases`
