from django.db import models
from django.core.validators import MaxValueValidator, MinLengthValidator
# Create your models here.

class Category(models.Model):
    name = models.CharField(max_length=30, unique=True)

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
    category = models.ForeignKey(Category, default=1, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(SubCategory, default=1, on_delete=models.CASCADE)
    created_at = models.DateTimeField(editable=False, auto_now=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        verbose_name = 'Video'
        verbose_name_plural = 'Videos'

class Docs(models.Model):

    name = models.CharField(max_length=125, unique=True)
    link = models.CharField(max_length=200, unique=True)
    category = models.ForeignKey(Category, default=1, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(SubCategory, default=1, on_delete=models.CASCADE)
    created_at = models.DateTimeField(editable=False, auto_now=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('id',)
        verbose_name = 'Doc'
        verbose_name_plural = 'Docs'