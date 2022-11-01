# Managing HTTP Servers

## Configure an HTTP Server

- Install an HTTP server
```bash
sudo dnf install httpd
```

- Enable and start the server
```bash
sudo systemctl enable --now httpd
```

- Allow HTTP traffic through firewall
```bash
sudo firewalld-cmd --add-service=http --permanent
```

- Install the SSL package
```bash
sudo dnf install mod_ssl
```

- Allow HTTPS traffic through firewall
```bash
sudo firewalld-cmd --add-service=https --permanent
```

- Edit the core configuring the server
```bash
sudo vim /etc/httpd/conf/httpd.conf
```

> Typical actions:  
>  - change http port  
>  - change bind address  
>  - set server name (domain)  
>  - set document root  

- Edit additional tunables for the server
```bash
sudo vim /etc/httpd/conf.d/...
```
> Typical actions:  
>  - configure SSL: `sudo vim /etc/httpd/conf.d/ssl.conf`  
>  - change https port  

- Manage installed modules
```bash
sudo vim /etc/httpd/conf.modules.d/...
```

- seeing the options
```bash
man httpd.conf
```

- Verify the config
```bash
sudo apachectl configtest
```

- Apply the config
```bash
sudo systemctl reload httpd
```

**Example**:

- Configure a private website at `blog.example.local` found at `/var/www/internal/blog`; and an external website at `public.example.com` found at `/var/www/public/`

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

- Define a new website that uses SSL with the certificate at `/opt/site.cert` and the key at `/opt/site.key`

```bash
#/var/httpd/conf.d/ssl-site.conf

<VirtualHost *:443>
  ServerName sslsite.example.com
  SSLEngine on              # Turn on SSL
  SSLCertificateFile "/opt/site.cert"     # path to SSL Cert
  SSLCertificateKeyFile "/opt/site.key"  # Path to SSL Key
</VirtualHost>
```

## Configure HTTP server log files

- httpd keeps 2 logs:
  - event log: `/var/log/httpd/access.log`
  - access log: `/var/log/httpd/error.log`

- Edit config
```bash
sudo vim /etc/httpd/conf/httpd.conf
```
> Typical actions:  
>  - change error log path: `ErrorLog "/path/to/error/file.log"`  
>  - set log level: `LogLevel ...`  

## Restrict access to a web page

-Restricting access is done within the `<Directory>` or `<File>` directives

**Examples**:

- Put the `/admin` path behind basic auth; create user john for it

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
