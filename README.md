Homelab Ansible
=================

Quick start
-----------

1. Copy the example secrets file and fill in real values:

```bash
cp vars/secrets.yml.example vars/secrets.yml
# edit vars/secrets.yml and provide real IPs and credentials
```

2. Run the playbook from the project root:

```bash
ansible-playbook playbooks/nodes_update.yml -v
```

What it does
------------
- Loads `vars/secrets.yml` and creates a dynamic `homelab` group from entries.
- Connects to each server using either a private key or password as declared in the secrets file.
- Runs the `update` role which updates package caches and upgrades packages (supports apt/dnf/yum).


Security and Git
---------------
- `vars/secrets.yml` is intentionally gitignored. Never commit secrets.
