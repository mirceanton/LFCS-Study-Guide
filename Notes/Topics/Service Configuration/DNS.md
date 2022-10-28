# Managing DNS

## Configuring a DNS server

- install: `sudo dnf install bind bind-utils`
- enable service: `sudo systemctl enable --now named`
- allow traffic: `sudo firewall-cmd --add-service=dns --permanent`

- configure: `sudo vim /etc/named.conf`
- to see options: `man named.conf`

- test dns resolution: `dig @127.0.0.1 google.com`

## Maintaining a DNS Zone

- `sudo vim /etc/named.conf`

```bash
# ...
zone "mirceanton.com" IN {
  type master;
  file "mirceanton.com.zone";
};
```

``` bash
sudo cp --preserve=all /var/named/named.localhost /var/named/mirceanton.com.zone
sudo vim /var/named/mirceanton.com.zone
```

```bash
$TTL 1D

@   IN SOA  @ administrator.mirceanton.com. (
                                      0         ; serial      # <-- version of this config
                                      1D        ; refresh     # <-- time interval for slaves to sync their version
                                      1H        ; retry       # <-- if last check failed, how long til next try
                                      1W        ; expire      # <-- amount of time to keep the zone if they get no reply from master
                                      3H  )     ; minimum     # <-- how long other servers to cache negative responses
@         NS       ns1.mirceanton.com.   # defines a nameserver
@         NS       ns2.mirceanton.com.   # defines a nameserver
ns1       A        1.2.3.4     # A record to the nameserver
ns2       A        1.2.3.5     # A record to the nameserver
@         A        2.3.4.5
www       A        2.3.4.5
# www       CNAME    2.3.4.5  # same as previous line
mirceanton.com.   MX 10   mail1.mirceanton.com.
                  MX 20   mail2.mirceanton.com.
mail1     A       1.2.3.6
mail2     A       1.2.3.7
@         TXT   "lorem ipsum dolor ihmet"
```

- reload config change: `sudo systemctl restart named`

---

- allow query from given network: `allow-query { 0.0.0.0/24; };`
- check dns records for a given domain on the local dns server: `dig @localhost name.com ANY`
- add a new record to a given zone so that `subdomain.domain.com` resolves to `1.2.3.4`: `echo "subdomain.domain.com.  A   1.2.3.4" > /var/named/domain.com.zone`
- add a new record to a given zone so that `sdomain.domain.com` points to `subdomain.domain.com`: `echo "sdomain.domain.com. CNAME subdomain.domain.com`
- to allow bind to fetch data from upstream dns servers, set `recursion` to `yes` in `/etc/named.conf`
- change the TTL of a given zone to 5 hours: inside `/var/named/mirceanton.com.zone`, a line should read `$TTL 5H`
