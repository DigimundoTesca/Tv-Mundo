# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-09-09 10:16
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0004_category_title'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='image',
            field=models.ImageField(default='', upload_to='categories'),
        ),
    ]
