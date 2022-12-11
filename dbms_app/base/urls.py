from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name = 'home'),
    path('branch/<int:branch>', views.dashboard, name = "dashboard"),     
    path('addroom/', views.add_room, name = 'add_room'),
    path('type/', views.room_type, name = 'room_type'),
    path('info/', views.customer, name = 'info'),

]