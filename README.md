# ansible
Personal ansible configurations

# Quickstart

1. Create `ansible-profile.yml` file from template and place in home directory:

```bash
wget -O ~/.ansible-profile.yml https://raw.githubusercontent.com/BOJIT/ansible/main/templates/.ansible-profile.yml
```

(if your system doesn't have `wget`, try `curl`):
```bash
curl -o ~/.ansible-profile.yml https://raw.githubusercontent.com/BOJIT/ansible/main/templates/.ansible-profile.yml
```

2. Customise the profile for your system

3. Run init command. This will install `ansible` and required dependencies.

```bash
wget -O - https://raw.githubusercontent.com/BOJIT/ansible/main/init.sh | bash
```
(if your system doesn't have `wget`, try `curl`):
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/BOJIT/ansible/main/templates/.ansible-profile.yml)"

4. For future synchronisations, simply type:

```bash
bojit-sync
```

## Supported Targets

- `Ubuntu 22.04`: Headless and Desktop Variants

- `WSL`: Similar to Ubuntu, but with `WSL`-specific quirks. Headless only (Base Profile)

- `Raspberry Pi OS: Debian distribution, Headless only (Base Profile)

- `MacOS`: Need to sort out my Mac dev machine.
