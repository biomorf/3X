#!/usr/bin/env sh
set -ex

ansible-playbook -i hosts --become local.yml --tags dns_check