from django.shortcuts import render,redirect
from myadmin2.models import *
from customer.models import *
from django.core.files.storage import FileSystemStorage
from django.contrib.auth.models import User
from django.contrib import auth
from abhushan import settings
import os

def layout(request):
	return render(request,'myadmin2/common/layout.html')

def dashboard(request):
	if request.user.is_authenticated:
		result = Feedback.objects.count()
		result1 = User.objects.count()
		result2 = Inquiry.objects.count()
		context={'result':result,'result1':result1,'result2':result2}
		return render(request,'myadmin2/dashboard.html',context)
	else:
		return redirect('/myadmin2/admin_login/')
#category
def addcat(request):
	return render(request,'myadmin2/addcat.html')

def storecat(request):
	categoryname=request.POST['catname']
	Addcat.objects.create(categoryname=categoryname)
	return redirect('/myadmin2/addcat')

def allcat(request):
	result = Addcat.objects.all()
	context={'result':result}
	return render(request,'myadmin2/allcat.html',context)


def destallcat(request,id):
	result= Addcat.objects.get(pk=id)
	result.delete()
	return redirect('/myadmin2/allcat')

def editcat(request,id):
	result=Addcat.objects.get(pk=id)
	context={'result':result}
	return render(request,'myadmin2/editcat.html',context)

def updatecat(request,id):
	name=request.POST['catname']

	Addcat.objects.update_or_create(pk=id,defaults={'categoryname':name})
	return redirect('/myadmin2/allcat/')

#Sub Category
def addsubcat(request):
	result=Addcat.objects.all()
	context={'result':result}
	return render(request,'myadmin2/addsubcat.html',context)

# def storesubcat(request):
# 	subcategoryname1=request.POST['subcat']
# 	categoryid=request.POST['catselect']
# 	Addsubcat.objects.create(subcategoryname=subcategoryname1,addcategory_id=categoryid)
# 	return redirect('/myadmin2/addsubcat')

def storesubcat1(request):
	subcatname=request.POST['subcat']
	catid=request.POST['catselect']
	Addsubcat.objects.create(subcategoryname=subcatname,addcategory_id=catid)
	return redirect('/myadmin2/addsubcat')

def allsubcat(request):
	result=Addsubcat.objects.all()
	context={'result':result}
	return render(request,'myadmin2/allsubcat.html',context)

def destsubcat(request,id):
	result=Addsubcat.objects.get(pk=id)
	result.delete()
	return redirect('/myadmin2/allsubcat')

def editsubcat(request,id):
	result=Addcat.objects.all()
	result1=Addsubcat.objects.get(pk=id)

	context={'result':result,'result1':result1}
	return render(request,'myadmin2/editsubcat.html',context)

def updatesubcat(request,id):
	subcatname=request.POST['subcat']
	catid=request.POST['catselect']

	Addsubcat.objects.update_or_create(pk=id,defaults={'subcategoryname':subcatname,'addcategory_id':catid})
	return redirect('/myadmin2/allsubcat/')
#showroom

def addshow(request):
	result=Area.objects.all()
	context={'result':result}
	return render(request,'myadmin2/addshowroom.html',context)

def storeshow(request):
	first_name=request.POST['fname']
	last_name=request.POST['lname']
	show_name=request.POST['showname']
	username=request.POST['uname']
	password=request.POST['pass']
	email=request.POST['shopemail']
	contact=request.POST['shopcontact']
	address=request.POST['shopaddress']
	area=request.POST['selectarea']
	user = User.objects.create_user(first_name=first_name,last_name=last_name,username=username, email=email , password=password)
	Addshowrom.objects.create(show_name=show_name,user=user, email=email,contact=contact,address=address,areaid_id=area,uname=username,password=password)
	return redirect('/myadmin2/addshow')

def allshow(request):
	result=Addshowrom.objects.all()
	context={'result':result}
	return render(request,'myadmin2/allshowroom.html',context)

def destshow(request,id):
	result=Addshow.objects.get(pk=id)
	result.delete()
	return redirect('/myadmin2/allshow')

def editshow(request,id):
	result=Addshow.objects.get(pk=id)
	result1=Area.objects.all()
	context={'result':result,'result1':result1}
	return render(request,'myadmin2/editshow.html',context)

def updateshow(request,id):
	email=request.POST['shopemail']
	contact=request.POST['shopcontact']
	address=request.POST['shopaddress']
	area=request.POST['selectarea']
	username=request.POST['uname']
	password=request.POST['pass']

	Addshowrom.objects.update_or_create(pk=id,defaults={'email':email,'contact':contact,'address':address,'areaid_id':area,'uname':username,'password':password})
	return redirect('/myadmin2/allshow/')

def user(request):
	result=User.objects.all()
	result1=Profile.objects.all()
	context={'result':result,'result1':result1}
	return render(request,'myadmin2/user.html',context)

def destuser(request,id):
	result=User.objects.get(pk=id)
	result.delete()
	return redirect('/myadmin2/user')

def orders(request):
	return render(request,'myadmin2/orders.html')

def inquiry(request):
	result=Inquiry.objects.all()
	context={'result':result}
	return render(request,'myadmin2/inquiry.html',context)

def feedback(request):
	result=Feedback.objects.all()
	context={'result':result}
	return render(request,'myadmin2/feedback.html',context)

#login

def admin_login(request):
	context={}
	return render(request,'myadmin2/login.html',context)

def admin_login_chk(request):
	uname=request.POST['username']
	passw=request.POST['pass']
	user= auth.authenticate(username=uname,password=passw)

	if user is not None:
		auth.login(request,user)
		return redirect('/myadmin2/dashboard')

	else:
		return redirect('/myadmin2/admin_login')

#Register

def admin_register(request):
	context={}
	return render(request,'myadmin2/register.html',context)

def admin_storereg(request):
	# auth_user # model:auth_user
	fname=request.POST['firstname']
	lname=request.POST['lastname']
	email=request.POST['email']
	uname=request.POST['username']
	passw=request.POST['pass']
	#cpassw=request.POST['cpass']

	#profile model:profile
	contact=request.POST['contact']
	address=request.POST['address']

	user = User.objects.create_user(first_name=fname,last_name=lname,email=email,username=uname,password=passw)
	Profile.objects.create(contact=contact,address=address,user_id=user.id,role_id=1)
	return redirect('/myadmin2/admin_login')

#	else:
#		print('password not matched')


#logout
def admin_logout(request):
	auth.logout(request)
	return redirect('/myadmin2/admin_login')