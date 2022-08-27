# Generated by Django 4.0.1 on 2022-04-09 09:45

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Addcat',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('categoryname', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'category',
            },
        ),
        migrations.CreateModel(
            name='Area',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('areaname', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'area',
            },
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('role', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'role',
            },
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('contact', models.BigIntegerField(null=True)),
                ('address', models.TextField(null=True)),
                ('role', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myadmin2.role')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'profile',
            },
        ),
        migrations.CreateModel(
            name='Addsubcat',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('subcategoryname', models.CharField(max_length=30)),
                ('addcategory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myadmin2.addcat')),
            ],
            options={
                'db_table': 'subcategory',
            },
        ),
        migrations.CreateModel(
            name='Addshowrom',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=254)),
                ('contact', models.BigIntegerField()),
                ('address', models.TextField()),
                ('show_name', models.TextField()),
                ('uname', models.CharField(max_length=40)),
                ('password', models.TextField()),
                ('areaid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myadmin2.area')),
                ('user', models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'showroom',
            },
        ),
        migrations.CreateModel(
            name='Addpro',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('productname', models.CharField(max_length=100)),
                ('productprice', models.CharField(max_length=20)),
                ('productweight', models.CharField(max_length=50)),
                ('productsmalldesc', models.CharField(max_length=100)),
                ('productlargedesc', models.CharField(max_length=400)),
                ('productimage', models.ImageField(upload_to='upload/')),
                ('productimage2', models.ImageField(upload_to='upload/')),
                ('addcategory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myadmin2.addcat')),
                ('addsubcategory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='myadmin2.addsubcat')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'product',
            },
        ),
    ]
