# Homelab

> My homelab IaC config

## Stack

- Ansible
- Traefik
- Docker Compose

## Requirements

- Python `kubernetes` package
- The Ansible Vault password in `ansible/vault-password`

### Generating Ansible Vault Secret

```
ansible-vault encrypt_string "" --name ""
```
