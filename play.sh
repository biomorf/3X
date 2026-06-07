#!/usr/bin/env bash
set -ex

export LANG=C.UTF-8
export LC_ALL=C.UTF-8

env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 \
	-e panel_api_token="BG7DgmVYIUCXN8kU9lvqhQ8YzI0jeNgJU9CPad9PxZ5x5YRr" \
	"$@"



#ansible-playbook -i hosts local.yml \

#    -e acme_certificate_force_update=true \
#    -e reset_3xui_db=true \
#      # API-токен панели 3X-UI
#    -e panel_api_token="BG7DgmVYIUCXN8kU9lvqhQ8YzI0jeNgJU9CPad9PxZ5x5YRr" \
#    -e panel_external_access=true \
#    -e "reality_fingerprint=qq" \
#    -e "reality_server_name=login.vk.ru" \
#    -e "reality_short_id=$(openssl rand -hex 8)"
#    -e extra_clients='["device2@restart2d.site"]'
 

