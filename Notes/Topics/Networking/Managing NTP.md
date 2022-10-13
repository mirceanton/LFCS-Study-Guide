# Managing NTP

The tool that synchronizes time: `chrony` daemon.

## Installing and configuring chrony

1. Set timezone
    ```bash
    sudo timedatectl set-timezone Europe/Bucharest
    ```

2. Install chrony
    ```bash
    sudo dnf install chrony
    ```

3. Start and enable the server
    ```bash
    sudo systemctl enable --now chronyd
    ```

4. Enable ntp
    ```bash
    sudo timedatectl set-ntp true
    ```

5. Check if time is synced
    ```bash
    timedatectl
    ```

6. Check chrony service status
    ```bash
    sudo systemctl status chronyd
    ```

## Managing the RTC

- Enabling the RTC
```bash
sudo timedatectl set-local-rtc true
```

- Disabling the RTC
```bash
sudo timedatectl set-local-rtc false
```
