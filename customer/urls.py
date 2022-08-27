"""abhushan URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from customer import views


urlpatterns = [
    path('layout/', views.layout, name='layout'),
    path('index/', views.index, name='index'),
    path('blog/', views.blog, name='blog'),
    path('contactus/', views.contactus, name='contactus'),
    path('aboutus/',views.aboutus,name='aboutus'),
    path('faq/',views.faq,name='faq'),
    path('customer_login/',views.customer_login,name='customer_login'),
    path('customer_login_chk/',views.customer_login_chk,name='customer_login_chk'),
    path('customer_register/',views.customer_register,name='customer_register'),
    path('customer_storereg/',views.customer_storereg,name='customer_storereg'),
    path('wishlist/',views.wishlist,name='wishlist'),
    path('cart/',views.cart,name='cart'),
    # path('shopdiamond/',views.shopdiamond,name='shopdiamond'),
    # path('shopgold/',views.shopgold,name='shopgold'),
    # path('shopsilver',views.shopsilver,name='shopsilver'),
    # path('shopplatinum',views.shopplatinum,name='shopplatinum'),
    path('myaccount',views.myaccount,name='myaccount'),
    path('customer_logout/',views.customer_logout,name='customer_logout'),
    path('storecontact/<int:id>',views.storecontact,name='storecontact'),
    path('inquiry/',views.inquiry,name='inquiry'),
    path('storeinq/',views.storeinq,name='storeinq'),
    path('customer_bookslot/',views.customer_bookslot,name='customer_bookslot'),
    path('product_details/<int:id>',views.product_details,name='product_details'),
    path('checklog/',views.checklog,name='checklog'),
    path('feedback/',views.feedback,name='feedback'),
    path('storefeedback/',views.storefeedback,name='storefeedback'),

    path('allproducts/',views.allproducts,name='allproducts'),
    path('earrings/',views.earrings,name='earrings'),
    path('pendent/',views.pendent,name='pendent'),
    path('rings/',views.rings,name='rings'),
    path('mangalsutra/',views.mangalsutra,name='mangalsutra'),
    path('chain/',views.chain,name='chain'),
    path('neckles/',views.neckles,name='neckles'),
    path('nosepin/',views.nosepin,name='nosepin'),
    path('bangles/',views.bangles,name='bangles'),

    path('storeinquiry/',views.storeinquiry,name='storeinquiry'),
    path('storetimeslot/',views.storetimeslot,name='storetimeslot'),
    path('timeslot/',views.timeslot,name='timeslot'),
    path('add_to_cart/<int:id>/',views.add_to_cart,name='add_to_cart'),
    path('delete_from_cart/<int:id>/',views.delete_from_cart,name='delete_from_cart'),
    path('add_to_wishlist/<int:id>/',views.add_to_wishlist,name='add_to_wishlist'),
    path('delete_from_wishlist/<int:id>/',views.delete_from_wishlist,name='delete_from_wishlist'),
    path('update_quantity/',views.update_quantity,name='update_quantity'),

    path('changepassword/<token>/',views.changepassword,name='changepassword'),
    path('forgetpassword/',views.forgetpassword,name='forgetpassword'),

    path('slotdetails/',views.slotdetails,name='slotdetails'),
]
