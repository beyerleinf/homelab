# Homelab

> My homelab IaC config

## Stack

- Ansible
- Traefik
- Docker Compose

## Requirements

- Python
- Ansible
- The Ansible Vault password in `ansible/vault-password`

### Generating Ansible Vault Secret

```
ansible-vault encrypt_string "" --name ""
```

### Install required roles and collections

Run this command in the `ansible` directory.

```
ansible-galaxy role install -r requirements.yml
```
