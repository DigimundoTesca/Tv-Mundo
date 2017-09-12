from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from catalog.models import Videos, Category, Docs
# Create your views here.
def home(request):
    template = 'home.html'
    videos = Videos.objects.all()
    context = {
        'videos': videos,
        'title': "Tv Mundo",
    }
    return render(request, template, context)

def catalog(request):
    template = 'catalog.html'
    category = Category.objects.all()

    title = 'Catalogo'
    context = {
        'category' : category,
        'title': title,
    }
    return render(request, template, context)

def videos(request):
    template = 'videos.html'
    videos = Videos.objects.all()
    categories = Category.objects.all()

    title = 'Catalogo - Documentos'
    context = {
        'videos' : videos,
        'category' : categories,
        'title': title,
    }
    return render(request, template, context)

def documents(request):
    template = 'documents.html'
    docs = Docs.objects.all()
    categories = Category.objects.all()

    title = 'Catalogo - Documentos'
    context = {
        'docs' : docs,
        'category' : categories,
        'title': title,
    }
    return render(request, template, context)

def s_videos(request, name):
    template = 's_videos.html'
    videos = Videos.objects.all().filter(category__name=name)
    title = name
    context = {
        'videos': videos,
        'title': title,
    }
    return render(request, template, context)

def s_documents(request, name):
    template = 's_documents.html'
    docs = Docs.objects.all().filter(category__name=name)
    title = name
    context = {
        'docs': docs,
        'title': title,
    }
    return render(request, template, context)

def docs(request, pk):
    doc = get_object_or_404(Docs, pk=pk)
    template = 'doc.html'
    title = 'MetaMundo - ' + doc.name
    context = {
        'page_title': 'PAGE_TITLE',
        'doc': doc,
        'title': title
    }
    return render(request, template, context)

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

def block(request, name):
    template = 'block.html'
    videos = Videos.objects.all().filter(category__name=name)
    docs = Docs.objects.all().filter(category__name=name)
    title = name
    context = {
        'docs': docs,
        'videos': videos,
        'title': title,
    }
    return render(request, template, context)
