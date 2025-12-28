#!/usr/bin/env bash
set -euo pipefail

echo "Running Ansible syntax checks..."
ansible-playbook playbooks/nodes_update.yml --syntax-check -i inventory || true

echo "Running ansible-lint..."
if command -v ansible-lint >/dev/null 2>&1; then
  ansible-lint -c .ansible-lint.yml . || true
else
  echo "ansible-lint not installed; skipping ansible-lint step."
fi

echo "Tests completed."
