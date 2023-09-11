# ansible
Personal ansible configurations

# Quickstart

1. Create `ansible-profile.yml` file from template and place in home directory:

```bash
wget -O ~/.ansible-profile.yml https://raw.githubusercontent.com/BOJIT/ansible/main/templates/.ansible-profile.yml
```

2. Customise the profile for your system

3. Run init command. This will install `ansible` and required dependencies.

```bash
wget -O - https://raw.githubusercontent.com/BOJIT/ansible/main/init.sh | bash
```
4. For future synchronisations, simply type:

```bash
bojit-sync
```

## Notes for MacOS

On MacOS, you will need to do a few manual commands first:

1 - install `brew` [Homebrew Package Manager](https://brew.sh/). This will also install XCode developer command-line tools

2 - run `brew install ansible` and `brew install wget`.

You can now run the Ansible playbooks as before. Use the following init script:

```bash
wget -O - https://raw.githubusercontent.com/BOJIT/ansible/main/init_mac.sh | zsh
```

## Supported Targets

- `Ubuntu 22.04`: Headless and Desktop Variants

- `WSL`: Similar to Ubuntu, but with `WSL`-specific quirks. (TODO)

- `MacOS`: Need to sort out my Mac dev machine.
