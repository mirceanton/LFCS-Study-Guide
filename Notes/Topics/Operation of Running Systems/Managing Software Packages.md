# Managing Software Packages

- Check for available upgrades
```bash
sudo dnf check-upgrade
```

- Upgrade installed packages
```bash
sudo dnf upgrade
```

- Show configured repositories
```bash
sudo dnf repolist
```

- Show all repositories
```bash
sudo dnf repolist --all
```

- Enable additional repository
```bash
sudo dnf config-manager --enable <name>
```

- Disable additional repository
```bash
sudo dnf config-manager --disable <name>
```

- Add a 3rd party repository
```bash
sudo dnf config-manager --add-repo <repo url>
```

- Search for a package
```bash
sudo dnf search 'key word'
```

- Show info for a package
```bash
sudo dnf info <package>
```

- Install a new packages
```bash
sudo dnf install <package>
```

- Reinstall package
```bash
sudo dnf reinstall <package>
```

- Uninstall existing package
```bash
sudo dnf remove <package>
```

- Show group installs
```bash
sudo dnf group list
```

- Show ALL group installs
```bash
sudo dnf group list --hidden
```

- Install group
```bash
sudo dnf group install '<name>' --with-optional
```

- Uninstall group
```bash
sudo dnf group remove '<name>'
```

- Manually install an `.rpm` file
```bash
sudo dnf install ./*.rpm
```

- Remove unused packages
```bash
sudo dnf autoremove
```

- Show what package provided a given file
```bash
sudo dnf provides /bin/top
```

- Show all files provided by a given package
```bash
sudo dnf repoquery --list nginx
```
