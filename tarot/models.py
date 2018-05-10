from django.db import models

# Create your models here.

class Card(models.Model):
    number = models.CharField(max_length=30, unique=True)
    name = models.CharField(max_length=30, unique=True)
    description = models.TextField()


class Response(models.Model):
    video = models.URLField()
    date = models.DateTimeField(editable=False, auto_now=True)

    def getmin(self):
        url = self.video
        img ="http://i1.ytimg.com/vi/"+url[32:43]+"/maxresdefault.jpg"
        return img


class Week(models.Model):
    number_week = models.PositiveSmallIntegerField()
    year = models.PositiveSmallIntegerField()


class Question(models.Model):
    OPEN = 'OP'
    CLOSE = 'CL'
    RESPONDING = 'RP'

    STATUS = (
        (OPEN, 'Abierta'),
        (CLOSE, 'Cerrada'),
    )

    card_one = models.CharField(max_length=3)
    card_two = models.CharField(max_length=3)
    card_three = models.CharField(max_length=3)
    email = models.EmailField(default="prueba@gmail.com")
    date_create = models.DateField(auto_now_add=True)
    response = models.ForeignKey(Response, on_delete=models.CASCADE, default=1, null=True)
    week = models.PositiveSmallIntegerField(default=0)
    status = models.CharField(max_length=2, null=True, choices=STATUS, default='OP')
    name = models.CharField(max_length=30, null=True)
    question = models.CharField(max_length=30, null=True)
