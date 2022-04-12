#!bin/sh

SUPERUSER_EMAIL = ${DJANGO_SUPERUSER_EMAIL:-"bcp4510@gmail.com"}
cd /app/

/opt/venv/bin/python manage.py migrate --noscript
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noscript || true