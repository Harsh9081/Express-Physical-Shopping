from django.db import models
from django.contrib.auth.models import User


class Role(models.Model):
	role = models.CharField(max_length=100)

	class Meta:
		db_table='role'


class Profile(models.Model):
	user=models.OneToOneField(User,on_delete=models.CASCADE)
	role = models.ForeignKey(Role, on_delete=models.CASCADE)
	contact=models.BigIntegerField(null=True)
	address=models.TextField(null=True)
	forget_password_token = models.CharField(max_length=100,null=True)
	created_at = models.DateTimeField(auto_now_add=True)

	class Meta:
		db_table='profile'



class Addcat(models.Model):
	categoryname=models.CharField(max_length=20)

	class Meta:
		db_table='category'

class Addsubcat(models.Model):
	subcategoryname=models.CharField(max_length=30)
	addcategory=models.ForeignKey(Addcat,on_delete=models.CASCADE)

	class Meta:
		db_table='subcategory'

class Addpro(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
	productname=models.CharField(max_length=100)
	productprice=models.CharField(max_length=20)
	productweight=models.CharField(max_length=50)
	productsmalldesc=models.CharField(max_length=100)
	productlargedesc=models.CharField(max_length=400)
	productimage=models.ImageField(upload_to='upload/')
	productimage2=models.ImageField(upload_to='upload/')
	addcategory=models.ForeignKey(Addcat,on_delete=models.CASCADE)
	addsubcategory=models.ForeignKey(Addsubcat,on_delete=models.CASCADE)

	class Meta:
		db_table='product'

class Area(models.Model):
	areaname=models.CharField(max_length=30)

	class Meta:
		db_table='area'

class Addshowrom(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE, null=True)
	areaid=models.ForeignKey(Area,on_delete=models.CASCADE)
	email=models.EmailField()
	contact=models.BigIntegerField()
	address=models.TextField()
	show_name=models.TextField()
	uname=models.CharField(max_length=40)
	password=models.TextField()
	
	class Meta:
		db_table='showroom'

