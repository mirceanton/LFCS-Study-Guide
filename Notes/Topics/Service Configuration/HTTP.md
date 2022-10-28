## Configure an HTTP Server

- install: `sudo dnf install httpd`
- allow http ports: `sudo firewalld-cmd --add-service=http --permanent`

- install ssl package: `sudo dnf install mod_ssl`
- allow http ports: `sudo firewalld-cmd --add-service=https --permanent`

- enable and start server: `sudo systemctl enable --now httpd`

- core configuring the server: `sudo vim /etc/httpd/conf/httpd.conf`
  - change http port
  - change bind address
  - set server name (domain)
  - set document root
- additional configuring the server: `sudo vim /etc/httpd/conf.d/...`
  - configure ssl: `sudo vim /etc/httpd/conf.d/ssl.conf`
    - change https port
- manage modules: `sudo vim /etc/httpd/conf.modules.d/...`

- seeing the options: `man httpd.conf`
- check config: `apachectl configtest`
- apply config: `sudo systemctl reload httpd`

**Example**:

- configure a private website at `blog.example.local` found at `/var/www/internal/blog`; and an external website at `public.example.com` found at `/var/www/public/`

```bash
#/var/httpd/conf.d/config.conf

<VirtualHost 192.168.1.24:80> # assuming this is the internal IP
  ServerName blog.example.local
  DocumentRoot /var/www/internal/blog/
</VirtualHost>

<VirtualHost 1.2.3.42:80> # assuming this is the external IP
  ServerName public.example.com
  DocumentRoot /var/www/public/
</VirtualHost>
```

- define a new website that uses SSL with the certificate at `/opt/site.cert` and the key at `/opt/site.key`

```bash
#/var/httpd/conf.d/ssl-site.conf

<VirtualHost *:443>
  ServerName sslsite.example.com
  SSLEngine on              # Turn on SSL
  SSLCertificateFile "/opt/site.cert"     # path to SSL Cert
  SSLCertificateKeyFile "/opt/site.key"  # Path to SSL Key
</VirtualHost>
```

# Configure HTTP server log files

- httpd keeps 2 logs:
  - event log: `/var/log/httpd/access.log`
  - access log: `/var/log/httpd/error.log`

- edit config: `sudo vim /etc`:
  - change error log path: `ErrorLog "/path/to/error/file.log"`
  - set log level: `LogLevel ...`

# Restrict access to a web page

- restricting access is done within the `<Directory>` directive

**Examples**:

- put the `/admin` path behind basic auth; create user john for it

```bash
sudo htpasswd -c /etc/httpd/passwords john;

echo <<EOT >> /etc/httpd/conf/httpd.conf
<Directory "/var/www/html/admin/">
    AuthType Basic
    AuthBasicProvider file
    AuthName "Secret admin page"
    AuthUserFile /etc/httpd/passwords
    Require valid-user
</Directory>
EOT
```
