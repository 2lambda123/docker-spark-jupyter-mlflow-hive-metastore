#!/usr/bin/dumb-init /bin/sh

airflow db init
sleep 3
airflow scheduler &
exec "$@"
