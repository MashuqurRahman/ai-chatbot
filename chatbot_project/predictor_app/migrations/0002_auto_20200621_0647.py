# Generated by Django 3.0.7 on 2020-06-21 06:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('predictor_app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='intent',
            name='intent',
            field=models.CharField(max_length=120, unique=True),
        ),
    ]
