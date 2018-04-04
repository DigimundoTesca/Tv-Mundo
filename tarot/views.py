from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from tarot.models import Week, Card, Response, Question
from django.contrib.auth.decorators import login_required
import random

@login_required
def start(request):
    template = 'tarot.html'
    cards = sorted(Card.objects.all(), key=lambda x: random.random())
    if request.method == 'POST':
        print(request.POST['cartas'])

    context = {
        'cards': cards,
        'title': "Tarot",
    }
    return render(request, template, context)


@login_required
def test(request):
    template = 'Tarot/tarot.html'
    card = Card.objects.all()
    context = {
        'cards': card,
        'title': "Tarot",
    }
    return render(request, template, context)

def admin_t(request):
    template = 'admin_t.html'
    context = {}
    return render(request, template, {})

def news_t(request):
    template = 'news.html'
    context = {}
    return render(request, template, {})

def questions_t(request):
    template = 'questions.html'
    questions = Question.objects.filter(status='OP')[:5]
    if request.method == 'POST':
        url_response= request.POST['response']
        resp = Response(video=url_response)
        resp.save()
        for question in questions:
            question.status = 'CL'
            question.save()
        redirect('tarot:questions_')

    context = {
        'questions': questions,
    }
    return render(request, template, context)
