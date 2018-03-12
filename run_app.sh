#!/usr/bin/env bash

DB_FILE='db.sqlite3'
if [ ! -z $1 ]; then
    rm ${DB_FILE}
fi

python3 manage.py makemigrations
python3 manage.py migrate

#echo "Creating superuser."
#python3 manage.py createsuperuser --username maroshmka --email maros@hmka.sk

python3 manage.py runserver 0:8003
