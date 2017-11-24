from django.conf import settings
from django.conf.urls import url
from . import views
from django.contrib.auth import views as auth_views

app_name = 'register'

urlpatterns = [    
    url(r'^login/$', auth_views.login, {'template_name': 'login.html'}, name='login'),
    url(r'^logout/$', views.logout_view ,  name='logout'),
    url(r'^register/$', views.register, name='register'),    
    url(r'^welcome/$', views.welcome, name='welcome'),
]

