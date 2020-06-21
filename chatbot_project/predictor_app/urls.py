from django.urls import path,include
from . import views

urlpatterns = [
    
    path('',views.HomeView,name="home"),
    path('ask_rani',views.BotView,name="Bot view"),
    path('ask_raja',views.FullresponseView,name="Full view Response")
]