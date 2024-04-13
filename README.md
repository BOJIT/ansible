# ansible

Personal ansible configurations

## Prerequisites

- On Linux-Based systems, your only requirement is some form of `python3` on your system path. Only ansible itself will be installed into your system python environment.

- It is recommended to do run an `apt/brew upgrade` if running on a fresh install.

- On MacOS you'll need XCode command-line tools. Install with `xcode-select --install`.

## Quickstart

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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/BOJIT/ansible/main/init.sh)"
```

4. For future synchronisations, simply type:

```bash
bojit-sync
```

## Supported Targets

- `Ubuntu 22.04`: Headless and Desktop Variants

- `WSL`: Similar to Ubuntu, but with `WSL`-specific quirks. Headless only (Base Profile)

- `Raspberry Pi OS: Debian distribution, Headless only (Base Profile)

- `MacOS`: Tested on Ventura / Later
