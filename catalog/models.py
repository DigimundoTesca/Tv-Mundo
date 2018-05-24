from django.db import models
from django.core.validators import MaxValueValidator, MinLengthValidator
from django.contrib.auth.models import User
# Create your models here.

class Subscriber(models.Model):

    TAR = 'TAR'
    MET = 'MET'
    PSI = 'PSI'
    TYPE = (
        (TAR, 'Tarot'),
        (MET, 'Metagenealogia'),
        (PSI, 'Psicomagia'),
    )

    grade = models.CharField(choices=TYPE, max_length=3)    
    user = models.OneToOneField(User, on_delete=models.CASCADE)

class Category(models.Model):
    name = models.CharField(max_length=30, unique=True)
    title = models.CharField(max_length=30, default="")

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        verbose_name = 'Categoría'
        verbose_name_plural = 'Categorías'

class SubCategory(models.Model):
    name = models.CharField(max_length=30, unique=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        verbose_name = 'SubCategoría'
        verbose_name_plural = 'SubCategorías'

class Videos(models.Model):

    name = models.CharField(max_length=125, unique=True)
    link = models.CharField(max_length=200, unique=True)
    image = models.CharField(max_length=200, default='video.png')
    category = models.ForeignKey(Category, default=1, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(SubCategory, default=1, on_delete=models.CASCADE)
    created_at = models.DateTimeField(editable=False, auto_now=True)
    status = models.BooleanField(default=True)
    order_number = models.IntegerField()

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        verbose_name = 'Video'
        verbose_name_plural = 'Videos'

class Docs(models.Model):

    IMAGE = 'IMG'
    PDF = 'PDF'
    WORD = 'WRD'
    TYPE = (
        (IMAGE, 'Imagen'),
        (PDF, 'PDF'),
        (WORD, 'WORD'),
    )

    name = models.CharField(max_length=125, unique=True)
    link = models.CharField(max_length=200, unique=True)
    kind = models.CharField(choices=TYPE, default=IMAGE, max_length=3)
    category = models.ForeignKey(Category, default=1, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(SubCategory, default=1, on_delete=models.CASCADE)
    created_at = models.DateTimeField(editable=False, auto_now=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        verbose_name = 'Doc'
        verbose_name_plural = 'Docs'
