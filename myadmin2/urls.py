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
from myadmin2 import views

urlpatterns = [
    path('layout/', views.layout, name='layout'),
    path('dashboard/',views.dashboard,name='dashboard'),
    path('addcat/',views.addcat,name='addcat'),
    path('editcat/<int:id>',views.editcat,name='editcat'),
    path('updatecat/<int:id>',views.updatecat,name='updatecat'),
    path('updatesubcat/<int:id>',views.updatesubcat,name='updatesubcat'),
    path('addsubcat/',views.addsubcat,name='addsubcat'),
    path('allcat/',views.allcat,name='allcat'),
    path('allshow/',views.allshow,name='allshow'),
    path('storeshow/',views.storeshow,name='storeshow'),
    path('storecat/',views.storecat,name='storecat'),
    path('destallcat/<int:id>',views.destallcat,name='destallcat'),
    path('destshow/<int:id>',views.destshow,name='destshow'),
    path('allsubcat/',views.allsubcat,name='allsubcat'),
    path('destsubcat/<int:id>',views.destsubcat,name='destsubcat'),
    path('editsubcat/<int:id>',views.editsubcat,name='editsubcat'),
    path('storesubcat1/',views.storesubcat1,name='storesubcat1'),
    path('user/',views.user,name='user'),
    path('destuser/<int:id>',views.destuser,name='destuser'),
    path('orders/',views.orders,name='orders'),
    path('inquiry/',views.inquiry,name='inquiry'),
    path('feedback/',views.feedback,name='feedback'),
    path('admin_login/',views.admin_login,name='admin_login'),
    path('admin_login_chk/',views.admin_login_chk,name='admin_login_chk'),
    path('admin_register/',views.admin_register,name='admin_register'),
    path('admin_storereg/',views.admin_storereg,name='admin_storereg'),
    path('logout/',views.admin_logout,name='admin_logout'),
    path('addshow/',views.addshow,name='addshow'),
    path('editshow/<int:id>',views.editshow,name='editshow'),
    path('updateshow/<int:id>',views.updateshow,name='updateshow'),
]
