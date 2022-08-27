from django.db import models
from django.contrib.auth.models import User
from myadmin2.models import *

class Contactus1(models.Model):
	name    = models.CharField(max_length = 250)
	contact = models.BigIntegerField()
	email   = models.EmailField()
	message = models.CharField(max_length = 800)
	subject = models.CharField(max_length = 500)

	class Meta:
		db_table = 'contactus1'


class Feedback(models.Model):
	name=models.CharField(max_length=40)
	email=models.EmailField()
	review=models.TextField()

	class Meta:
		db_table='feedback'

class Inquiry(models.Model):
	name = models.CharField(max_length = 250)
	contact = models.BigIntegerField()
	email = models.EmailField()
	message = models.CharField(max_length = 800)
	inimage= models.ImageField(upload_to='upload/')

	class Meta:
		db_table='inquiry'

class Cart(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE)
	product = models.ForeignKey(Addpro, on_delete=models.CASCADE)
	quantity = models.IntegerField()


class Wishlist(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE)
	product = models.ForeignKey(Addpro, on_delete=models.CASCADE)

class Booking(models.Model):
	bookdate   = models.DateField()
	booktime   = models.CharField(max_length=30)
	addshowrom = models.ForeignKey(Addshowrom,on_delete=models.CASCADE)
	user       = models.ForeignKey(User, on_delete=models.CASCADE)	
	status     = models.CharField(max_length=30,default='pending')
	remarks   = models.TextField(default='')
	
	class Meta:
		db_table='booking'
