from django.db import models

# Create your models here.

class Card(models.Model):
    number = models.CharField(max_length=3, unique=True)
    name = models.CharField(max_length=30, unique=True)
    description = models.TextField()



class Response(models.Model):
    video = models.URLField()
    description = models.TextField()


class Week(models.Model):
    number_week = models.PositiveSmallIntegerField()
    year = models.PositiveSmallIntegerField()


class Question(models.Model):
    card_one = models.ForeignKey(Card, related_name='card1_question')
    card_two = models.ForeignKey(Card, related_name='card2_question')
    card_three = models.ForeignKey(Card, related_name='card3_question')
    date_create = models.DateField(auto_now=True)
    response = models.ForeignKey(Response, on_delete=models.CASCADE)
    week = models.ForeignKey(Week, on_delete=models.CASCADE)

