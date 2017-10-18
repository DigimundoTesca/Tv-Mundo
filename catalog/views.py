from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from catalog.models import Videos, Category, Docs
from django.contrib.auth.decorators import login_required

@login_required
def home(request):
    template = 'home.html'
    videos = Videos.objects.all()
    context = {
        'videos': videos,
        'title': "Tv Mundo",
    }
    return render(request, template, context)    

@login_required
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

@login_required
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

@login_required
def block(request, name, pk=None):
    template = 'block.html'
    docs = Docs.objects.all().filter(category__title=name)
    videos = Videos.objects.all().filter(category__title=name)
    title = name

    if pk==None:        
        s_vid =videos[:1].get()
    else:
        s_vid=videos.filter(pk=pk)
        s_vid=s_vid[:1].get()

    context = {        
        's_vid' : s_vid,
        'videos' : videos,
        'docs': docs,
        'title': title,
    }
    return render(request, template, context)

@login_required
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
