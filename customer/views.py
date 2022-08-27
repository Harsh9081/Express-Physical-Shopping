from django.shortcuts import render, redirect, HttpResponse
from django.contrib import auth
from django.contrib.auth.models import User
from myadmin2.models import *
from customer.models import *
from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from abhushan import settings
import os
from .helpers import send_forget_password_mail


def layout(request):
	return render(request,'customer/common/layout.html')

def index(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		result2=Addpro.objects.filter(addsubcategory_id=7)
		result3=Addpro.objects.filter(addsubcategory_id=5)
		result4=Addpro.objects.filter(addsubcategory_id=10)
		result5=Addpro.objects.filter(addsubcategory_id=9)
		result6=Addpro.objects.filter(addsubcategory_id=11)
		result7=Addpro.objects.filter(addsubcategory_id=12)
		result8=Addpro.objects.filter(addsubcategory_id=15)
		result9=Addpro.objects.filter(addsubcategory_id=16)
		result10=Addpro.objects.filter(addsubcategory_id=1)
		result11=Addpro.objects.filter(addsubcategory_id=2)
		result12=Addpro.objects.filter(addsubcategory_id=8)
		context = {'result':result,'result4':result4,'result2':result2,'result3':result3,'result5':result5,'result6':result6,'result7':result7,'result8':result8,'result9':result9,'result10':result10,'result11':result11,'result12':result12}
		return render(request,'customer/index.html',context)
	else:
		result2=Addpro.objects.filter(addsubcategory_id=7)
		result3=Addpro.objects.filter(addsubcategory_id=5)
		result4=Addpro.objects.filter(addsubcategory_id=10)
		result5=Addpro.objects.filter(addsubcategory_id=9)
		result6=Addpro.objects.filter(addsubcategory_id=11)
		result7=Addpro.objects.filter(addsubcategory_id=12)
		result8=Addpro.objects.filter(addsubcategory_id=15)
		result9=Addpro.objects.filter(addsubcategory_id=16)
		result10=Addpro.objects.filter(addsubcategory_id=1)
		result11=Addpro.objects.filter(addsubcategory_id=2)
		result12=Addpro.objects.filter(addsubcategory_id=8)
		context = {'result4':result4,'result2':result2,'result3':result3,'result5':result5,'result6':result6,'result7':result7,'result8':result8,'result9':result9,'result10':result10,'result11':result11,'result12':result12}
		return render(request,'customer/index.html',context)

def blog(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/blog.html',context)
	else:
		return render(request,'customer/blog.html')

def contactus(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/contactus.html',context)
	else:
		return render(request,'customer/contactus.html')

def allproducts(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.count()
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=1)
		result2=Addpro.objects.filter(addsubcategory_id=2)
		result3=Addpro.objects.filter(addsubcategory_id=3)
		result4=Addpro.objects.filter(addsubcategory_id=4)
		result5=Addpro.objects.filter(addsubcategory_id=5)
		result6=Addpro.objects.filter(addsubcategory_id=6)
		result7=Addpro.objects.filter(addsubcategory_id=7)
		result8=Addpro.objects.filter(addsubcategory_id=8)
		result9=Addpro.objects.filter(addsubcategory_id=9)
		result10=Addpro.objects.filter(addsubcategory_id=10)
		result11=Addpro.objects.filter(addsubcategory_id=11)
		result12=Addpro.objects.filter(addsubcategory_id=12)
		result15=Addpro.objects.filter(addsubcategory_id=15)
		result16=Addpro.objects.filter(addsubcategory_id=16)
		result13=Addpro.objects.filter(addsubcategory_id=13)
		result14=Addpro.objects.filter(addsubcategory_id=14)
		result22=Addpro.objects.filter(addsubcategory_id=22)
		result23=Addpro.objects.filter(addsubcategory_id=23)
		context = {'cnt':cnt,'result':result,'result1':result1,'result2':result2,'result3':result3,'result4':result4,'result5':result5,'result6':result6,'result7':result7,'result8':result8,'result9':result9,'result10':result10,'result11':result11,'result12':result12,'result13':result13,'result14':result14,'result15':result15,'result16':result16,'result22':result22,'result23':result23}
		return render(request,'customer/allproducts.html',context)
	else:
		cnt = Addpro.objects.count()
		result1=Addpro.objects.filter(addsubcategory_id=1)
		result2=Addpro.objects.filter(addsubcategory_id=2)
		result3=Addpro.objects.filter(addsubcategory_id=3)
		result4=Addpro.objects.filter(addsubcategory_id=4)
		result5=Addpro.objects.filter(addsubcategory_id=5)
		result6=Addpro.objects.filter(addsubcategory_id=6)
		result7=Addpro.objects.filter(addsubcategory_id=7)
		result8=Addpro.objects.filter(addsubcategory_id=8)
		result9=Addpro.objects.filter(addsubcategory_id=9)
		result10=Addpro.objects.filter(addsubcategory_id=10)
		result11=Addpro.objects.filter(addsubcategory_id=11)
		result12=Addpro.objects.filter(addsubcategory_id=12)
		result15=Addpro.objects.filter(addsubcategory_id=15)
		result16=Addpro.objects.filter(addsubcategory_id=16)
		result13=Addpro.objects.filter(addsubcategory_id=13)
		result14=Addpro.objects.filter(addsubcategory_id=14)
		result22=Addpro.objects.filter(addsubcategory_id=22)
		result23=Addpro.objects.filter(addsubcategory_id=23)
		context = {'cnt':cnt,'result1':result1,'result2':result2,'result3':result3,'result4':result4,'result5':result5,'result6':result6,'result7':result7,'result8':result8,'result9':result9,'result10':result10,'result11':result11,'result12':result12,'result13':result13,'result14':result14,'result15':result15,'result16':result16,'result22':result22,'result23':result23}
		return render(request,'customer/allproducts.html',context)

def storecontact(request,id):
	custname    = request.POST['name']
	custphone   = request.POST['phone']
	custsubject = request.POST['subject']
	custemail   = request.POST['email']
	custmessage = request.POST['message']

	Contactus1.objects.create(name=custname,contact=custphone,email=custemail,message=custmessage,subject=custsubject,user_id=id)
	
	return redirect('/customer/contactus/')


 # Inquiry Crud ----->
def inquiry(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/inquiry.html',context)
	else:
		return render(request,'customer/inquiry.html')

def storeinquiry(request):
	name=request.POST['name']
	contact=request.POST['phone']
	email=request.POST['email']
	messge=request.POST['subject']
	pro_img=request.FILES['img']

	Inquiry.objects.create(name=name,contact=contact,email=email,message=messge,inimage=pro_img)
	return redirect('/customer/inquiry')

def storeinq(request):
	inname=request.POST['name']
	incon= request.POST['phone']
	inemail=request.POST['email']
	inmsg=request.POST['message']
	inimg=request.FILES['in_file']

	Inquiry1.objects.create(name=inname,contact=incon,email=inemail,message=inmsg,user_id=1,inimage=inimg)
	return redirect('/customer/inquiry/')

def aboutus(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/aboutus.html',context)
	else:
		return render(request,'customer/aboutus.html')

def faq(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/faq.html',context)
	else:
		return render(request,'customer/faq.html')

def customer_login(request):
	return render(request,'customer/login.html')

def customer_login_chk(request):
	name = request.POST['username']
	pswd = request.POST['password']

	user = auth.authenticate(username=name, password=pswd)

	if user is not None:
		auth.login(request, user)
		return redirect('/customer/index')
	else:
		messages.success(request,'Username Or Password Does Not Match')
		return redirect('/customer/customer_login')

def customer_register(request):
	return render(request,'customer/register.html')

def customer_bookslot(request):
	return render(request,'customer/book_slot.html')

def customer_storereg(request):
	fname= request.POST['fname']
	lname= request.POST['lname']
	name = request.POST['username']
	email = request.POST['email']
	password = request.POST['password']
	cpassword= request.POST['cpassword']
	contact=request.POST['contact']
	address=request.POST['address']

	if password == cpassword:
		user = User.objects.create_user(first_name=fname,last_name=lname,username=name, email=email, password=password)
		profile_obj = Profile.objects.create(contact=contact,address=address,user=user,role_id=3)
		profile_obj.save()
		return redirect('/customer/customer_login/')

	else :
		messages.success(request,'Both Password Does Not Match')
		return redirect('/customer/customer_register')

def customer_logout(request):
	auth.logout(request)
	return redirect('/customer/customer_login')

def wishlist(request):
	if request.user.is_authenticated:
		data = Wishlist.objects.all()
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result, 'data':data}
		return render(request,'customer/wishlist.html',context)
	else:
		return render(request,'customer/wishlist.html')

def cart(request):
	if request.user.is_authenticated:
		id = request.user.id
		data = Cart.objects.filter(user=id)
		tot = 0
		for i in data:
			tot += int(i.product.productprice) * i.quantity
		result = User.objects.get(pk=id)
		context = {'result':result, 'data':data, 'tot':tot}
		return render(request,'customer/cart.html',context)
	else:
		return render(request,'customer/cart.html')

# def shopdiamond(request):
# 	if request.user.is_authenticated:
# 		id = request.user.id
# 		result = User.objects.get(pk=id)
# 		result1=Addpro.objects.all()
# 		context = {'result':result,'result1':result1}
# 		return render(request,'customer/shop-diamond.html',context)
# 	else:
# 		result1=Addpro.objects.all()
# 		context = {'result1':result1}
# 		return render(request,'customer/shop-diamond.html',context)

# def shopgold(request):
# 	if request.user.is_authenticated:
# 		id = request.user.id
# 		result = User.objects.get(pk=id)
# 		result1=Addpro.objects.all()
# 		context = {'result':result,'result1':result1}
# 		return render(request,'customer/shop-gold.html',context)
# 	else:
# 		result1=Addpro.objects.all()
# 		context = {'result1':result1}
# 		return render(request,'customer/shop-gold.html',context)

# def shopsilver(request):
# 	if request.user.is_authenticated:
# 		id = request.user.id
# 		result = User.objects.get(pk=id)
# 		result1=Addpro.objects.all()
# 		context = {'result':result,'result1':result1}
# 		return render(request,'customer/shop-silver.html',context)
# 	else:
# 		result1=Addpro.objects.all()
# 		context = {'result1':result1}
# 		return render(request,'customer/shop-silver.html',context)

# def shopplatinum(request):
# 	if request.user.is_authenticated:
# 		id = request.user.id
# 		result = User.objects.get(pk=id)
# 		result1=Addpro.objects.all()
# 		context = {'result':result,'result1':result1}
# 		return render(request,'customer/shop-platinum.html',context)
# 	else:
# 		result1=Addpro.objects.all()
# 		context = {'result1':result1}
# 		return render(request,'customer/shop-platinum.html',context)

def myaccount(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/myaccount.html',context)
	else:
		return render(request,'customer/myaccount.html')

def earrings(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=5).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=6).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=5)
		result2=Addpro.objects.filter(addsubcategory_id=6)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=5).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=6).count()
		tot=cnt+cnt1
		result1=Addpro.objects.filter(addsubcategory_id=5)
		result2=Addpro.objects.filter(addsubcategory_id=6)
		context = {'tot':tot,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)

def pendent(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=7).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=8).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=7)
		result2=Addpro.objects.filter(addsubcategory_id=8)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=7).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=8).count()
		tot=cnt+cnt1
		result1=Addpro.objects.filter(addsubcategory_id=7)
		result2=Addpro.objects.filter(addsubcategory_id=8)
		context = {'tot':tot,'result1':result1,'result2':result2}
		return render(request,'customer/pendent.html',context)

def rings(request):
	if request.user.is_authenticated:
		id=request.user.id
		result = User.objects.get(pk=id)
		cnt = Addpro.objects.filter(addsubcategory_id=1).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=2).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=3).count()
		cnt3 = Addpro.objects.filter(addsubcategory_id=4).count()
		tot=cnt+cnt1+cnt2+cnt3
		result1=Addpro.objects.filter(addsubcategory_id=1)
		result2=Addpro.objects.filter(addsubcategory_id=2)
		result3=Addpro.objects.filter(addsubcategory_id=3)
		result4=Addpro.objects.filter(addsubcategory_id=4)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2,'result3':result3,'result4':result4}
		return render(request,'customer/rings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=1).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=2).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=3).count()
		cnt3 = Addpro.objects.filter(addsubcategory_id=4).count()
		tot=cnt+cnt1+cnt2+cnt3
		result1=Addpro.objects.filter(addsubcategory_id=1)
		result2=Addpro.objects.filter(addsubcategory_id=2)
		result3=Addpro.objects.filter(addsubcategory_id=3)
		result4=Addpro.objects.filter(addsubcategory_id=4)
		context = {'tot':tot,'result1':result1,'result2':result2,'result3':result3,'result4':result4}
		return render(request,'customer/rings.html',context)

def mangalsutra(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=10).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=9).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=10)
		result2=Addpro.objects.filter(addsubcategory_id=9)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=10).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=9).count()
		tot = cnt+cnt2
		result1=Addpro.objects.filter(addsubcategory_id=10).count()
		result2=Addpro.objects.filter(addsubcategory_id=9).count()
		context = {'tot':tot,'result1':result1,'result2':result2}
		return render(request,'customer/mangalsutra.html',context)

def chain(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=11).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=12).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=11)
		result2=Addpro.objects.filter(addsubcategory_id=12)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=11).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=12).count()
		tot = cnt+cnt2
		result1=Addpro.objects.filter(addsubcategory_id=11).count()
		result2=Addpro.objects.filter(addsubcategory_id=12).count()
		context = {'tot':tot,'result1':result1,'result2':result2}
		return render(request,'customer/chain.html',context)

def neckles(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=13).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=14).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=13)
		result2=Addpro.objects.filter(addsubcategory_id=14)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=13).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=14).count()
		tot = cnt+cnt2
		result1=Addpro.objects.filter(addsubcategory_id=13).count()
		result2=Addpro.objects.filter(addsubcategory_id=14).count()
		context = {'tot':tot,'result1':result1,'result2':result2}
		return render(request,'customer/neckles.html',context)

def nosepin(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=15).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=16).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=15)
		result2=Addpro.objects.filter(addsubcategory_id=16)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=15).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=16).count()
		tot = cnt+cnt2
		result1=Addpro.objects.filter(addsubcategory_id=15).count()
		result2=Addpro.objects.filter(addsubcategory_id=16).count()
		context = {'tot':tot,'result1':result1,'result2':result2}
		return render(request,'customer/nosepin.html',context)

def bangles(request):
	if request.user.is_authenticated:
		id=request.user.id
		cnt = Addpro.objects.filter(addsubcategory_id=22).count()
		cnt1 = Addpro.objects.filter(addsubcategory_id=23).count()
		tot=cnt+cnt1
		result = User.objects.get(pk=id)
		result1=Addpro.objects.filter(addsubcategory_id=22)
		result2=Addpro.objects.filter(addsubcategory_id=23)
		context = {'tot':tot,'result':result,'result1':result1,'result2':result2}
		return render(request,'customer/earrings.html',context)
	else:
		cnt = Addpro.objects.filter(addsubcategory_id=22).count()
		cnt2 = Addpro.objects.filter(addsubcategory_id=23).count()
		tot = cnt+cnt2
		result1=Addpro.objects.filter(addsubcategory_id=22).count()
		result2=Addpro.objects.filter(addsubcategory_id=23).count()
		context = {'result1':result1,'result2':result2}
		return render(request,'customer/bangles.html',context)

# feedback

def feedback(request):
	if request.user.is_authenticated:
		id = request.user.id
		result = User.objects.get(pk=id)
		context = {'result':result}
		return render(request,'customer/feedback.html',context)
	else:
		return render(request,'customer/feedback.html')

def storefeedback(request):
	name=request.POST['feedname']
	email=request.POST['feedemail']
	review=request.POST['feedreview']
	Feedback.objects.create(name=name,email=email,review=review)
	return redirect('/customer/feedback/')

def product_details(request,id):
	result= Addpro.objects.get(pk=id)
	context={'result':result}
	return render(request,'customer/product_details.html',context)

def checklog(request):
	if request.user.is_authenticated:
		return redirect(request. META['HTTP_REFERER'])
	else:
		return redirect('/customer/customer_login')

def add_to_cart(request, id):
	if request.user.is_authenticated:
		if not Cart.objects.filter(user=request.user, product_id=id).exists():
			Cart.objects.create(user=request.user, product_id=id, quantity=1)
		return redirect('cart')
	else:
		return redirect('/customer/customer_login')

def delete_from_cart(request, id):
	if request.user.is_authenticated:
		Cart.objects.get(pk=id).delete()
		return redirect('cart')
	else:
		return redirect('/customer/customer_login')


def add_to_wishlist(request, id):
	if request.user.is_authenticated:
		if not Wishlist.objects.filter(user=request.user, product_id=id).exists():
			Wishlist.objects.create(user=request.user, product_id=id)
		return redirect('wishlist')
	else:
		return redirect('/customer/customer_login')

def delete_from_wishlist(request, id):
	if request.user.is_authenticated:
		Wishlist.objects.get(pk=id).delete()
		return redirect('wishlist')
	else:
		return redirect('/customer/customer_login')

def update_quantity(request):
	if request.user.is_authenticated:
		cart_id = request.POST['product_id']
		quantity = request.POST['quantity']
		Cart.objects.update_or_create(pk=cart_id,defaults={'quantity':quantity})
		return HttpResponse(1)
	else:
		return redirect('/customer/customer_login')
		
def timeslot(request):
	result=Addshowrom.objects.all()
	context={'result':result}
	return render(request,'customer/timeslot.html',context)

def storetimeslot(request):
	bookdate=request.POST['bkdate']
	booktime=request.POST['bktime']
	bookshow=int(request.POST['bkshow'])
	print(bookshow)
	if not Booking.objects.filter(bookdate=bookdate,booktime=booktime).exists():
		Booking.objects.create(user=request.user,bookdate=bookdate,booktime=booktime,addshowrom_id=bookshow)
		return redirect('/customer/slotdetails')
	else:
		messages.success(request,'Slot Already Booked Choose Another Slot')
		return redirect('/customer/timeslot')

def changepassword(request,token):
	try:
		profile_obj = Profile.objects.filter(forget_password_token = token).first()
		context = {'user_id' : profile_obj.user.id}
		
		if request.method == 'POST':
			new_password = request.POST.get('new_password')
			confirm_password = request.POST.get('reconfirm_password')
			user_id = request.POST.get('user_id')
			
			if user_id is  None:
				messages.success(request, 'No user id found.')
				return redirect(f'/customer/changepassword/{token}/')
			
			if  new_password != confirm_password:
				messages.success(request, 'both should  be equal.')
				return redirect(f'/customer/changepassword/{token}/')
			user_obj = User.objects.get(id = user_id)
			user_obj.set_password(new_password)
			user_obj.save()
			return redirect('/customer/customer_login')

			
			
			
		
		
	except Exception as e:
		print(e)
	return render(request , 'customer/changepassword.html' , context)

import uuid
def forgetpassword(request):
	context={}

	try:
		if request.method == 'POST':
			username = request.POST.get('username')
			
			if not User.objects.filter(username=username).first():
				messages.success(request, 'Not user found with this username.')
				return redirect('/forget-password/')
			
			user_obj = User.objects.get(username = username)
			token = str(uuid.uuid4())
			profile_obj= Profile.objects.get(user = user_obj)
			profile_obj.forget_password_token = token
			profile_obj.save()
			send_forget_password_mail(user_obj.email , token)
			messages.success(request, 'An email is sent.')
			return redirect('/customer/forgetpassword/')
				
	
	
	except Exception as e:
		print(e)
	return render(request , 'customer/forgetpassword.html')


def slotdetails(request):
	if request.user.is_authenticated:
		id=request.user.id
		# print(id);
		result = Booking.objects.filter(user_id=id).last()
		result1 = Cart.objects.filter(user=id)
		context={'result':result,'result1':result1}
		return render(request,'customer/slotdetails.html',context)
