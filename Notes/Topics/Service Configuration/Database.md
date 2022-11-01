# Managing Database Servers

- Install mariadb
```bash
sudo dnf install mariadb-server
```

- Start and enable mariadb service
```bash
sudo systemctl enable --now mariadb
```

- Allow mariadb traffic through firewall
```bash
sudo firewall-cmd --add-service=mysql --permanent
```

- Secure the mariadb installation
```bash
sudo mysql_secure_installation
```

- Log in as mysql root user
```bash
mysql -u root -p
```

- Edit the main configuration file
```bash
sudo vim /etc/my.cnf.d/mariadb-server.cnf
```

> Typical actions:  
>  - set data directory  
>  - set socket  
>  - set log file  
>  - set `bind-address` (default `0.0.0.0`)  
>  - set port by configuring the `port=...` directive under `[mysqld]`  
