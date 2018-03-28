from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from tarot.models import Week, Card, Response
from django.contrib.auth.decorators import login_required

import random

@login_required
def start(request):
    template = 'tarot.html'
    card = sorted(Card.objects.all(), key=lambda x: random.random())
    context = {
        'cards': card,
        'title': "Tarot",
        'cards': card,
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