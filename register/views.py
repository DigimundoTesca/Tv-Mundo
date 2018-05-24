from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from catalog.models import Videos, Category, Docs
from django.contrib.auth import logout
from django.contrib.auth import authenticate, login
from register.forms import RegisterForm

def login_view(request):
    template = 'login.html'
    context = {
        'title': "Tv Mundo",
    }
    return render(request, template, context)

def register(request):
    template = 'register.html'
    form = RegisterForm()
    message = None
    context = {
        'title': "Tv Mundo",
        'form' : form,
        'message':message
    }
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            message = "Tu cuenta ha sido creada"
    return render(request, template, context)

def logout_view(request):
    logout(request)
    template = 'logout.html'
    context = {
        'title': "Tv Mundo - Sesion Terminada",
    }
    return render(request, template, context)

def bienvenido(request):
    template = 'welcome.html'
    title = 'Tv-Mundo Bienvenido'
    category = Category.objects.all()

    context = {
        'category': category,
        'title': title,
    }
    return render(request, template, context)
