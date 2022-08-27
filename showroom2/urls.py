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
from showroom2 import views

urlpatterns = [
    path('layout/', views.layout, name='layout'),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('addpro/', views.addpro, name='addpro'),
    path('storepro/',views.storepro,name='storepro'),
    path('allpro/', views.allpro, name='allpro'),
    path('timeslot/',views.timeslot,name='timeslot'),
    path('inquiry/',views.inquiry,name='inquiry'),
    path('feedback/',views.feedback,name='feedback'),
    path('destpro/<int:id>',views.destpro,name='destpro'),
    path('login/',views.login,name='login'),
    path('showroom_logout/',views.showroom_logout,name='showroom_logout'),
    path('showroom_login_chk/',views.showroom_login_chk,name='showroom_login_chk'),
    path('updatetimeslot/<int:id>',views.updatetimeslot,name='updatetimeslot'), 
    path('edittimeslot/<int:id>',views.edittimeslot,name='edittimeslot'), 
    path('visted/',views.visted,name='visted'),
    path('notvisted/',views.notvisted,name='notvisted'),
    path('pending/',views.pending,name='pending'),
    path('schedule_time/<int:id>',views.schedule_time,name='schedule_time'),
    path('schedulslot/<int:id>',views.schedulslot,name='schedulslot'),
    path('get_subcategory/',views.get_subcategory,name='get_subcategory'),
    path('userdata/',views.userdata,name='userdata'),
]
