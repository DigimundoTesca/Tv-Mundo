from tv_mundo.settings.base import *

DEBUG = False

ALLOWED_HOSTS = ['.cristobal-jodorowsky.com']
TEMPLATES[0]['OPTIONS']['debug'] = DEBUG
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

# Database
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.getenv('TV_MUNDO_DB_NAME'),
        'USER': os.getenv('TV_MUNDO_DB_USER'),
        'PASSWORD': os.getenv('TV_MUNDO_DB_PASSWORD'),
        'HOST': os.getenv('TV_MUNDO_DB_HOST'),
        'PORT': os.getenv('TV_MUNDO_DB_PORT'),
    }
}
