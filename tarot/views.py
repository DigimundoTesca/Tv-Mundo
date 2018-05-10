from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from tarot.models import Week, Card, Response, Question
from django.contrib.auth.decorators import login_required

import random
import datetime
from datetime import date


def start(request):
    template = 'tarot.html'
    cards = sorted(Card.objects.all(), key=lambda x: random.random())
    week = date.today().isocalendar()[1]
    year = datetime.datetime.now().year
    question_week = Question.objects.filter(week=week)
    available = False
    if len(question_week) < 5:
        if datetime.datetime.today().weekday() == 1 and datetime.datetime.now().hour >= 12:
            available = True
        elif datetime.datetime.today().weekday() != 1:
            available = True
    if request.method == 'POST':
        cards = request.POST['data']
        card1 = cards[2:4]
        card2 = cards[7:9]
        card3 = cards[12:14]
        name = request.POST['name']
        email = request.POST['email']
        description = request.POST['description']
        question = Question.objects.create(card_one=card1, card_two=card2, card_three=card3,
                                name=name, email=email, question=description, week=week)
        question.save()
    context = {
        'cards': cards,
        'title': "Tarot",
        'available': available,
    }



    return render(request, template, context)


def test(request):
    template = 'questions_solved.html'
    questions = Question.objects.filter(status='CL')
    context = {
        'questions': questions,
        'title': "Tarot",
    }
    return render(request, template, context)

def admin_t(request):
    template = 'admin_t.html'
    context = {}
    return render(request, template, {})

def news_t(request):
    template = 'news.html'
    response = Response.objects.all()
    for id in response:
        print(id.getmin())
    context = {
        'responses': response,

    }
    return render(request, template, context)

def questions_t(request):
    template = 'questions.html'
    week = date.today().isocalendar()[1]
    questions_week = Question.objects.filter(week=week)
    available = False
    if len(questions_week) >= 5:
        available = True
    if request.method == 'POST':
        url_response = request.POST['response']
        resp = Response(video=url_response)
        resp.save()
        for question in questions_week:
            question.status = 'CL'
            question.save()
        redirect('tarot:questions_')
    context = {
        'questions': questions_week,
        'available': available,
    }
    return render(request, template, context)
