# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-09-04 08:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='docs',
            name='kind',
            field=models.CharField(default='Imagen', max_length=50),
        ),
    ]
