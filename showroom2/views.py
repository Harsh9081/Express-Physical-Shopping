from django.shortcuts import render,redirect
from myadmin2.models import Addcat,Addsubcat,Addshowrom
from django.core.files.storage import FileSystemStorage
from abhushan import settings
from django.contrib.auth.models import User
from django.contrib import auth
import os
from myadmin2.models import *
from customer.models import *
from customer.views import *
from datetime import date
from django.db.models import Count

def get_subcategory(request):
	cat_id = request.GET['cat_id']
	result1=Addsubcat.objects.filter(addcategory_id=cat_id)
	context={'result1':result1}
	return render(request,'showroom2/get_subcategory.html',context)

def userdata(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		data, booking, cart = '', '', ''
		if request.method == 'POST':
			name = request.POST['search']
			data = User.objects.get(username=name)
			booking = Booking.objects.filter(user=data,status='pending')
			cart = Cart.objects.filter(user=data)
			
		context = {'result':result,'data':data, 'booking':booking, 'cart':cart}
		return render(request,'showroom2/userdata.html',context)
	else:
		return render(request,'showroom2/userdata.html')		

def layout(request):
	return render(request,'showroom2/common/layout.html',context)

def dashboard(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		result1=Addpro.objects.count()
		pending1 = Booking.objects.count()
		visited1 = Booking.objects.filter(status='approve').count()
		context={'result':result,'result1':result1,'pending1':pending1,'visited1':visited1}
		return render(request,'showroom2/dashboard.html',context)
	else:
		return redirect('/showroom2/login/')

def addpro(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		result1=Addcat.objects.all()
		result2=Addsubcat.objects.all()
		context={'result':result,'result1':result1,'result2':result2}
		return render(request,'showroom2/addproduct.html',context)
	else:
		return render(request,'showroom2/addproduct.html')


def storepro(request):
	productname=request.POST['proname']
	productprice=request.POST['proprice']
	productweight=request.POST['proweight']
	productsmalldesc=request.POST['prosmalldisc']
	productlargedesc=request.POST['prolargedisc']
	proimg=request.FILES['file']
	proimg2=request.FILES['file2']


	categoryid=request.POST['catselect']
	subcategoryid=request.POST['subcatselect']

	Addpro.objects.create(user=request.user, productname=productname,productprice=productprice,productweight=productweight,productsmalldesc=productsmalldesc,productlargedesc=productlargedesc,productimage=proimg,addcategory_id=categoryid,addsubcategory_id=subcategoryid,productimage2=proimg2)

	return redirect('/showroom2/addpro/')

def allpro(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		result1=Addpro.objects.all()
		context={'result':result,'result1':result1}
		return render(request,'showroom2/allproduct.html',context)
	else:
		return render(request,'showroom2/addproduct.html')

def destpro(request,id):
	result=Addpro.objects.get(pk=id)
	result.delete()
	return redirect('/showroom2/allpro/')

def timeslot(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		showroom = Addshowrom.objects.get(user_id=id)
		result1=Booking.objects.filter(addshowrom_id=showroom.id)
		context={'result':result,'result1':result1}
		return render(request,'showroom2/timeslot.html',context)
	else:
		return render(request,'showroom2/timeslot.html')

def login(request):
	context={}
	return render(request,'showroom2/login.html',context)

def showroom_login_chk(request):
	uname = request.POST['username']
	pswd = request.POST['password']
	user= auth.authenticate(username=uname,password=pswd)

	if user is not None:
		auth.login(request,user)
		return redirect('/showroom2/dashboard')

	else:
		return redirect('/showroom2/login')


def updatetimeslot(request,id):
	result = Booking.objects.get(pk=id)
	context={'result':result}
	return render(request,'showroom2/updatetime.html',context)

def edittimeslot(request,id):
	remarks= request.POST['timeremarks']
	status = request.POST['slot']
	Booking.objects.update_or_create(pk=id,defaults={'remarks':remarks,'status':status})
	return redirect('/showroom2/pending/')


def showroom_logout(request):
	auth.logout(request)
	return redirect('/showroom2/login/')


#time slot
def visted(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		showroom = Addshowrom.objects.get(user_id=id)
		result1=Booking.objects.filter(addshowrom_id=showroom.id,status='approve')
		context={'result':result,'result1':result1}
		return render(request,'showroom2/visted.html',context)
	else:
		return render(request,'showroom2/visted.html')

def notvisted(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		showroom = Addshowrom.objects.get(user_id=id)
		current_date = date.today()
		result1=Booking.objects.filter(addshowrom_id=showroom.id,status='pending',bookdate__lt = current_date)
		context={'result':result,'result1':result1}
		return render(request,'showroom2/notvisted.html',context)
	else:
		return render(request,'showroom2/notvisted.html')

def pending(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		current_date = date.today()
		showroom = Addshowrom.objects.get(user_id=id)
		result1=Booking.objects.filter(addshowrom_id=showroom.id,status='pending',bookdate__gt = current_date)
		context={'result':result,'result1':result1}
		return render(request,'showroom2/pending.html',context)
	else:
		return render(request,'showroom2/pending.html')

def schedule_time(request,id):
	if request.user.is_authenticated:
		id1=request.user.id
		result = User.objects.get(pk=id1)
		result1=Booking.objects.get(pk=id)
		context={'result':result,'result1':result1}
		return render(request,'showroom2/shu_time.html',context)
	else:
		return render(request,'showroom2/shu_time.html')

def schedulslot(request,id):
	bookdate = request.POST['shu_date']
	booktime = request.POST['shu_time1']

	Booking.objects.update_or_create(pk=id,defaults={'bookdate':bookdate,'booktime':booktime})
	return redirect('/showroom2/notvisted/')