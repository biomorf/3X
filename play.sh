#!/usr/bin/env sh
set -ex

#ansible-playbook -i hosts --become local.yml 



ansible-playbook -i hosts local.yml \
    -e acme_certificate_force_update=true \


    #--tags acme_certificates \
 

