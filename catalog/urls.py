from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'catalog'

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^catalog/$', views.catalog, name='catalog'),
    url(r'^videos/$', views.videos, name='videos'),
    url(r'^documents/$', views.documents, name='documents'),
    url(r'^block/(?P<name>[\w-]+)$', views.block, name='block'),
    url(r'^vid/(?P<pk>[0-9]+)$', views.vid, name='vid'),
    url(r'^docs/(?P<pk>[0-9]+)$', views.docs, name='docs'),

]
