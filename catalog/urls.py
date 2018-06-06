from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'catalog'

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^catalog/$', views.catalog, name='catalog'),    
    url(r'^block/(?P<name>[\w-]+)/$', views.block, name='block'),
    url(r'^(?P<name>[\w-]+)/videos/(?P<pk>[0-9]+)/$', views.videos, name='videos'),
    url(r'^(?P<name>[\w-]+)/images/$', views.images, name='images'),
    url(r'^(?P<name>[\w-]+)/docs/$', views.docs, name='docs'),
]
