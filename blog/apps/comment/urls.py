from django.urls import path
from .views import AddcommentView


urlpatterns = [
    path(r'add/', AddcommentView, name='add_comment'),
]