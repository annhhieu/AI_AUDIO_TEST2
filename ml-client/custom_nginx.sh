#!/bin/bash
if [ "${DOMAIN}" = "139.99.77.105" ]; then
    echo 'Deploy server on 139.99.77.105..........'
    envsubst '$${DOMAIN} $${BE_HOST} $${BE_PORT}' < local_nginx.conf > /etc/nginx/conf.d/app.conf
else
    echo 'Deploy server on staging or prodution.........'
    envsubst '$${DOMAIN} $${BE_HOST} $${BE_PORT}' < m_nginx.conf > /etc/nginx/conf.d/app.conf
fi
exec "$@"
