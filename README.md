# 3X
📋 Инструкция по использованию Ansible-плейбука
1. Базовый запуск
bash
env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 \
  -e "panel_api_token=<ваш_токен>"
2. Управление внешним доступом к панели
Включить доступ (панель будет доступна по https://panel.restart2d.site:8443/):

bash
env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 \
  -e "panel_api_token=<токен>" \
  -e "panel_external_access=true"
Отключить доступ (панель только через SSH-туннель):

bash
env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 \
  -e "panel_api_token=<токен>" \
  -e "panel_external_access=false"
3. Сброс базы данных 3X-UI
Восстановление admin/admin, очистка всех inbound и клиентов:

bash
env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 \
  -e "panel_api_token=<токен>" \
  -e "reset_3xui_db=true"
4. Принудительное обновление сертификата Let's Encrypt
bash
env LANG=C.UTF-8 LC_ALL=C.UTF-8 ansible-playbook -i hosts local.yml -f 1 \
  -e "panel_api_token=<токен>" \
  -e "acme_certificate_force_update=true"
5. Быстрый доступ к панели через SSH-туннель
Если внешний доступ отключён, выполните на локальной машине:

bash
ssh -L 12053:127.0.0.1:2053 def@<IP_сервера>
Затем откройте в браузере http://127.0.0.1:12053.

6. Скачать клиентский JSON-конфиг с сервера
bash
scp def@<IP_сервера>:/root/client-config.json ./
7. Просмотр учётных данных и логов на сервере
bash
cat /root/vpn-credentials.txt
cat /root/vpn-deploy.log
