from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'tarot'

urlpatterns = [
    url(r'^start/$', views.start, name='start_tarot'),
    url(r'^test/$', views.test, name='test'),
]

