from django.contrib import admin
from tarot.models import Card, Question, Response, Week

@admin.register(Card)
class AdminCard(admin.ModelAdmin):
    list_display = ('number', 'name', 'image',)
    ordering = ['number']

@admin.register(Question)
class AdminQuestion(admin.ModelAdmin):
    list_display = ('id', 'card_one', 'card_one', 'card_two', 'card_three',)
    ordering = ['id']

@admin.register(Week)
class AdminWeek(admin.ModelAdmin):
    list_display = ('number_week', 'year',)


@admin.register(Response)
class AdminSubCategory(admin.ModelAdmin):
    list_display = ('id', 'video',)

