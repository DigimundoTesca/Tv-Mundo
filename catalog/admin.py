from django.contrib import admin
from catalog.models import Videos, Category, SubCategory, Docs, Subscriber

@admin.register(Videos)
class AdminVideo(admin.ModelAdmin):
    list_display = ('name', 'category', 'subcategory', 'created_at','status')
    list_editable = ('status',)
    ordering = ['name']

@admin.register(Docs)
class AdminDocs(admin.ModelAdmin):
    list_display = ('name', 'link', 'kind' ,'category', 'subcategory', 'created_at')
    ordering = ['name']

@admin.register(Subscriber)
class AdminSubscriber(admin.ModelAdmin):
    list_display = ('user', 'grade')
    ordering = ['user']

@admin.register(Category)
class AdminCategory(admin.ModelAdmin):
    pass

@admin.register(SubCategory)
class AdminSubCategory(admin.ModelAdmin):
    pass
