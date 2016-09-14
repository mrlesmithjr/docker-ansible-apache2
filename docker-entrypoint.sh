#!/bin/sh

ansible-playbook -i "localhost," -c local /docker-entrypoint.yml \
  --extra-vars "apache2_enable_php=$APACHE2_ENABLE_PHP"

exec supervisord -n
