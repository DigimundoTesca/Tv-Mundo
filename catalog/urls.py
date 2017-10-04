from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'catalog'

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^catalog/$', views.catalog, name='catalog'),
    url(r'^files/$', views.files, name='files'),
    url(r'^(?P<name>[\w-]+)$', views.block, name='block'),
    url(r'^video/(?P<pk>[0-9]+)$', views.vid, name='vid'),
    url(r'^file/(?P<pk>[0-9]+)$', views.file, name='file'),
]
