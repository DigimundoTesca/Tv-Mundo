from django.contrib import admin
from catalog.models import Videos, Category, SubCategory, Docs, Subscriber

@admin.register(Videos)
class AdminVideo(admin.ModelAdmin):
    list_display = ('id','name', 'category', 'subcategory','status','order_number','image')
    list_display_links = ('id',)
    list_editable = ('name','status','order_number','image','subcategory')
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
    list_display = ['id','name']
    list_editable = ['name']
    

@admin.register(SubCategory)
class AdminSubCategory(admin.ModelAdmin):
    list_display = ('id', 'name',)
    list_editable = ['name']
