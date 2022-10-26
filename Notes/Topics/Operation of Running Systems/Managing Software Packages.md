# Managing Software Packages

- check for available upgrades: `sudo dnf check-upgrade`
- upgrading installed packages: `sudo dnf upgrade`

- show configured repositories: `sudo dnf repolist`
- show all repositories: `sudo dnf repolist --all`
- enable additional repository: `sudo dnf config-manager --enable <name>`
- disable additional repository: `sudo dnf config-manager --disable <name>`
- add a 3rd party repository: `sudo dnf config-manager --add-repo <repo url>`

- search for a package: `sudo dnf search 'key word'`
- show info for package: `sudo dnf info <package>`

- install new packages: `sudo dnf install <package>`
- reinstall new packages: `sudo dnf reinstall <package>`
- uninstall existing package: `sudo dnf remove <package>`

- show group installs: `sudo dnf group list`
- show ALL group installs: `sudo dnf group list --hidden`
- install group: `sudo dnf group install '<name>' --with-optional`
- uninstall group: `sudo dnf group remove '<name>'`

- manually installing an `.rpm` file: `sudo dnf install ./*.rpm`

- remove unused packages: `sudo dnf autoremove`

- show what package provided a given file: `dnf provides /bin/top`
- show all files provided by a given package: `sudo dnf repoquery --list nginx`
