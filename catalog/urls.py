from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'catalog'

urlpatterns = [
    url(r'^catalog/$', views.catalog, name='catalog'),
    url(r'^block/(?P<name>[\w-]+)$', views.block, name='block'),
    url(r'^vid/(?P<pk>[0-9]+)$', views.vid, name='vid'),
    url(r'^docs/(?P<pk>[0-9]+)$', views.docs, name='docs'),

]
