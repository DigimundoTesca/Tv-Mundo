from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from tarot.models import Week, Card, Response, Question
from django.contrib.auth.decorators import login_required

import random
import datetime
from datetime import date

# Mail includes
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
from smtplib import SMTPRecipientsRefused
from django.core.mail import EmailMultiAlternatives
from django.template.loader import get_template
from django.template import Context


def start(request):
    template = 'tarot.html'
    cards = sorted(Card.objects.all(), key=lambda x: random.random())
    week = date.today().isocalendar()[1]
    year = datetime.datetime.now().year
    question_week = Question.objects.filter(week=week)
    available = False
    number = len(question_week)+1
    if len(question_week) < 5:
        if datetime.datetime.today().weekday() == 0 and datetime.datetime.now().hour >= 12:
            available = True
        elif datetime.datetime.today().weekday() != 0:
            available = True
    if request.method == 'POST':
        if len(Question.objects.filter(week=week))>=5:
            redirect('tarot:start_tarot')
        cards = request.POST['data']
        card1 = cards[2:4]
        card2 = cards[7:9]
        card3 = cards[12:14]
        name = request.POST['name']
        email = request.POST['email']
        description = request.POST['description']
        question = Question.objects.create(card_one=card1, card_two=card2, card_three=card3,
                                name=name, email=email, question=description, week=week)
        new_context = {
            'name': name,
            'title': 'Su consulta se ha creado',
            'consult': description,
            'number': number,
            'week': week,
        }
        sendmail(request, email, new_context)
        question.save()
        if number >= 5:
            questions = Question.objects.filter(week=week)
            question_context = {
                'Questions': questions,
            }
            sendCristobal(request, question_context)
    context = {
        'cards': cards,
        'turno': number,
        'week' : week,
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


def sendmail(request, email_user, new_context):
    fromaddr = "cristobal.jodorowskyt@gmail.com"
    toaddr = email_user
    template = get_template('mail.html')
    html_content = template.render(new_context)
    msg = MIMEMultipart()
    msg['From'] = fromaddr
    msg['To'] = toaddr
    msg['Subject'] = "Se ha generado una respuesta a su consulta"
    body = html_content
    msg.attach(MIMEText(body, 'html'))
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login(fromaddr, "#Tarotjodorowsky")
    text = msg.as_string()
    server.sendmail(fromaddr, toaddr, text)
    server.quit()


def sendCristobal(request, Questions):
    fromaddr = "cristobal.jodorowskyt@gmail.com"
    toaddr = 'ceo@digimundo.com.mx'
    template = get_template('mailC.html')
    html_content = template.render(Questions)
    msg = MIMEMultipart()
    msg['From'] = fromaddr
    msg['To'] = toaddr
    msg['Subject'] = "Preguntas de la semana"
    body = html_content
    msg.attach(MIMEText(body, 'html'))
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login(fromaddr, "#Tarotjodorowsky")
    text = msg.as_string()
    server.sendmail(fromaddr, toaddr, text)
    server.quit()
