from django.contrib import admin
from catalog.models import Videos, Category, SubCategory

@admin.register(Videos)
class AdminVideo(admin.ModelAdmin):
    list_display = ('name', 'link', 'category', 'subcategory', 'created_at')
    ordering = ['name']

@admin.register(Category)
class AdminCategory(admin.ModelAdmin):
    pass

@admin.register(SubCategory)
class AdminSubCategory(admin.ModelAdmin):
    pass
