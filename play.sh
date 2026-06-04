#!/usr/bin/env bash
set -ex

export LANG=C.UTF-8
export LC_ALL=C.UTF-8

#ansible-playbook -i hosts --become local.yml 
env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 "$@"

#ansible-playbook -i hosts local.yml \

#    -e acme_certificate_force_update=true \


    #--tags acme_certificates \
 

