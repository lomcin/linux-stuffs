# Linux Stuffs
Remember that script you've always wanted to help you getting started with something in Linux? This repository is about that. :D
- [Go for it!](#available-scripts)
- [I'm a developer](#im-a-developer)
- [I'm not a developer](#im-not-a-developer)
# I'm a developer
- [Developer Essentials](#developer-essentials)
- [Crypto](#crypto)
- [Docker](#docker)
- [Nvidia](#nvidia)
- [Visual Studio Code](#visual-studio-code)
- [General Stuff](#general-stuff)

# I'm not a developer
- [General Stuff](#general-stuff)


# Supported distributions
- Ubuntu 18.04 (Tested)

# Available Scripts
## General Stuff
[Top /\ ](#linux-stuffs)
### Fix Ubuntu Time
This is usually useful when using a machine that already/also have Windows installed. This solved the time that changes every time you change from Operational System.
```bash
./scripts/fix_ubuntu_time
```

## Developer Essentials
[Top /\ ](#linux-stuffs)
### Install Developer Essentials
This script installs build-essentials, cmake, python3, net-tools (ifconfig), and possible more useful stuffs for developers.
```bash
./scripts/install_dev_essentials
```

## Crypto
[Top /\ ](#linux-stuffs)
### Create self-signed certificate
Go to ```crypto/selfsigning/``` folder. Modify the **san.cnf** file at your will. And run the following command.
```bash
./generate_selfsigned_certificate.sh
```
If you do not change any variable, then your private key will be in **my_key.key**, your certificate signing request file will be **my_csr.csr**, and your self-signed certificate will be in **my_cert_crt**.
## Docker
[Top /\ ](#linux-stuffs)
### Install Docker
Simple and direct. May need to reboot the machine.
```bash
./scripts/install_docker
```
To reboot the machine (**please be sure you've saved all your work before this**):
```bash
sudo reboot
```
*Yes, it will ask for password. If you're not a sudoer, just remove sudo from the command.*
```bash
reboot
```
### Install Nvidia Stuff for Docker
- [Nvidia Drivers](#install-nvidia-drivers)
- [Nvidia Container Toolkit](#install-nvidia-container-toolkit)

## Nvidia
[Top /\ ](#linux-stuffs)
### Install Nvidia Drivers
```bash
./scripts/install_nvidia_drivers
```

### Install Nvidia Container Toolkit
```bash
./scripts/install_nvidia_container_toolkit
```

## Visual Studio Code
[Top /\ ](#linux-stuffs)
### Install Visual Studio Code
```bash
./scripts/install_vscode
```