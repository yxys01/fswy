from django.urls import path,re_path
from .views import login_view, logout_view, register_view, profile_view, change_profile_view



urlpatterns = [
    path(r'login/', login_view, name='login'),
    path(r'logout', logout_view, name='logout'),
    path(r'register/', register_view, name='register'),
    path(r'profile/', profile_view, name='profile'),
    path(r'profile/change/', change_profile_view, name='change_profile'),

]