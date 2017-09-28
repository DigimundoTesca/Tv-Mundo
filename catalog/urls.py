from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'catalog'

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^catalog/$', views.catalog, name='catalog'),
    url(r'^all_videos/$', views.videos, name='videos'),
    url(r'^all_documents/$', views.documents, name='documents'),
    url(r'^(?P<name>[\w-]+)/videos$', views.s_videos, name='s_videos'),
    url(r'^(?P<name>[\w-]+)/docs$', views.s_documents, name='s_documents'),
    url(r'^(?P<name>[\w-]+)$', views.s_documents, name='block'),
    url(r'^vid/(?P<pk>[0-9]+)$', views.vid, name='vid'),
    url(r'^docs/(?P<pk>[0-9]+)$', views.docs, name='docs'),

]
