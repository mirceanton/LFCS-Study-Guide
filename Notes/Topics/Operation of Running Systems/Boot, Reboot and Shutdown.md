# Boot, Reboot and Shutdown

- rebooting a system: `sudo systemctl reboot`
- rebooting a system: `sudo systemctl reboot --force`
- rebooting a system: `sudo systemctl reboot --force --force`

- shutting down a system: `sudo systemctl poweroff`
- shutting down a system: `sudo systemctl poweroff --force`
- shutting down a system: `sudo systemctl poweroff --force --force`

- scheduling a shutdown at 2AM: `sudo shutdown 02:00`
- shutdown in 20 minutes: `sudo shutdown +15`
- reboot in 10 minutes: `sudo shutdown -r +10`

- setting a wall message: `sudo shutdown -r +6 'this is the wall message'`

- canceling a pending shutdown: `sudo shutdown -c`
