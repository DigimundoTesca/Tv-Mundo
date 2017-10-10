from tv_mundo.settings.dev import *

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
