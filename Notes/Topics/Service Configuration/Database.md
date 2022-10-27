# Managing Database Servers

- install mariadb: `sudo dnf install mariadb-server`
- start and enable mariadb service: `sudo systemctl enable --now mariadb`
- allow mariadb traffic through firewall: `sudo firewall-cmd --add-service=mysql --permanent`

- securing mariadb: `sudo mysql_secure_installation`
- log in as mysql root user: `mysql -u root -p`

- main configuration: `sudo vim /etc/my.cnf.d/mariadb-server.cnf`
  - set data directory
  - set socket
  - set log file
  - set `bind-address` (default `0.0.0.0`)
  - set port by configuring the `port=...` directive under `[mysqld]`
