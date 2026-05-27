#!/usr/bin/env sh
set -ex

ansible-playbook -i hosts --become local.yml 



#ansible-playbook -i hosts.ini deploy-3xui.yml --tags inbound_create,connection_info -e acme_certificate_force_update=true