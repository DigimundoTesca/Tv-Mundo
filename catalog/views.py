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
    videos = Videos.objects.all()
    docs = Docs.objects.all()

    title = 'Catalogo'
    context = {
        'docs' : docs,
        'videos' : videos,
        'category' : category,
        'title': title,
    }
    return render(request, template, context)

def files(request):
    template = 'files.html'
    docs = Docs.objects.all()
    categories = Category.objects.all()
    title = 'Catalogo - Documentos'
    context = {
        'docs' : docs,
        'category' : categories,
        'title': title,
    }
    return render(request, template, context)

def block(request, name):
    template = 'block.html'
    documents = Docs.objects.all().filter(category__title=name)
    videos = Videos.objects.all().filter(category__title=name)
    title = name
    context = {
        'videos': videos,
        'docs': documents,
        'title': title,
    }
    return render(request, template, context)

def file(request, pk):
    doc = get_object_or_404(Docs, pk=pk)
    template = 'file.html'
    title = 'MetaMundo - ' + doc.name
    context = {
        'page_title': 'PAGE_TITLE',
        'doc': doc,
        'title': title
    }
    return render(request, template, context)

def vid(request, pk):
    video = get_object_or_404(Videos, pk=pk)
    r_videos = Videos.objects.all()
    template = 'vid.html'
    title = 'MetaMundo - ' + video.name
    context = {
        'page_title': 'PAGE_TITLE',
        'r_videos': r_videos,
        'video': video,
        'title': title
    }
    return render(request, template, context)
