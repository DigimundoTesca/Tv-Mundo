from django.conf import settings
from django.conf.urls import url

from . import views

app_name = 'tarot'

urlpatterns = [
    url(r'^start/$', views.start, name='start_tarot'),
    url(r'^test/$', views.test, name='test'),
    url(r'^admin_t/$', views.admin_t, name='admin_tarot'),
    url(r'^news_t/$', views.news_t, name='news_tarot'),
    url(r'^questions_t/$', views.questions_t, name='questions_'),
]
