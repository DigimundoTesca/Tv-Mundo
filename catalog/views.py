from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from catalog.models import Videos, Category
# Create your views here.
@login_required(login_url='users:login')
def catalog(request):
    template = 'catalog.html'
    category = Category.objects.all()

    title = 'Catalogo'
    context = {
        'category' : category,
        'title': title,
    }
    return render(request, template, context)

@login_required(login_url='users:login')
def videos(request):
    template = 'videos.html'
    category = Category.objects.all()

    title = 'Catalogo - Documentos'
    context = {
        'category' : category,
        'title': title,
    }
    return render(request, template, context)

@login_required(login_url='users:login')
def documents(request):
    template = 'documents.html'
    category = Category.objects.all()

    title = 'Catalogo - Videos'
    context = {
        'category' : category,
        'title': title,
    }
    return render(request, template, context)

@login_required(login_url='users:login')
def docs(request, pk):
    video = get_object_or_404(Videos, pk=pk)
    template = 'vid.html'
    title = 'MetaMundo - ' + video.name
    context = {
        'page_title': 'PAGE_TITLE',
        'video': video,
        'title': title
    }
    return render(request, template, context)

@login_required(login_url='users:login')
def vid(request, pk):
    video = get_object_or_404(Videos, pk=pk)
    template = 'vid.html'
    title = 'MetaMundo - ' + video.name
    context = {
        'page_title': 'PAGE_TITLE',
        'video': video,
        'title': title
    }
    return render(request, template, context)

@login_required(login_url='users:login')
def block(request, name):
    template = 'block.html'
    videos = Videos.objects.all().filter(category__name=name)
    title = name
    context = {
        'videos': videos,
        'title': title,
    }
    return render(request, template, context)

def home(request):
    template = 'home.html'
    videos = Videos.objects.all()
    context = {
        'videos': videos,
        'title': "Tv Mundo",
    }
    return render(request, template, context)
