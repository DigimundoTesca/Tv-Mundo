from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from catalog.models import Videos, Category, Docs, Subscriber
from django.contrib.auth.decorators import login_required

@login_required
def home(request):
    template = 'home.html'
    category = Category.objects.all()
    videos = Videos.objects.all()
    grade = Subscriber.objects.get(user=request.user)
    
    context = {
        'grade': grade,
        'videos': videos,
        'title': "Tv Mundo",
        'category' : category,
    }
    return render(request, template, context)


@login_required
def block(request, name):
    template = 'block.html'
    cat = Category.objects.all()
    selCat = cat.get(title=name)
    title = name

    context = {
        'title': title,
        'category': cat,
        'selCat': selCat,
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
def videos(request, name, pk=0):
    template = 'videos.html'
    videos = Videos.objects.filter(category__title=name).filter(status=True)
    category = Category.objects.all()
    docs = Docs.objects.filter(category__title=name)
    title = name

    if not videos:
        s_vid = "false"
    else:
        if pk == '0':
            s_vid = videos.first()
        else:
            s_vid = videos.filter(pk=pk)            

    context = {
        's_vid': s_vid,
        'videos': videos,
        'docs':docs,
        'category': category,
        'title': title,
    }
    return render(request, template, context)

@login_required
def images(request, name, pk=None):
    template = 'images.html'
    docs = Docs.objects.filter(category__title=name).filter(kind="IMG")
    category = Category.objects.all()
    title = name

    context = {
        'category': category,
        'docs': docs,
        'title': title,
    }
    return render(request, template, context)


@login_required
def docs(request, name, pk=None):
    template = 'documents.html'
    docs = Docs.objects.all().filter(category__title=name)
    category = Category.objects.all()
    title = name

    context = {
        'category': category,
        'docs': docs,
        'title': title,
    }
    return render(request, template, context)
