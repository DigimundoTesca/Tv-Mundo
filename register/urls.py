from django.conf import settings
from django.conf.urls import url
from . import views

app_name = 'register'

urlpatterns = [    
    url(r'^login/$', views.login_view, name='login'),
    url(r'^login/$', views.logout_view, name='logout'),
    url(r'^register/$', views.register, name='register'),    
]

