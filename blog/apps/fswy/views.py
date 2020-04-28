# ------------------------
__author__ = 'fswy'
__date__ = '2020/4/28 11:26'
# ------------------------

from django.shortcuts import render
from django.shortcuts import get_object_or_404, get_list_or_404
from .models import Article, BigCategory, Category, Tag
from django.views.generic import ListView

# Create your views here.
class IndexView(ListView):
    '''
    首页视图，继承自ListView，用于展示从数据库中获取的文章列表
    '''
    # 获取数据库中的文章列表
    model = Article
    # temlate_name 属性用于指定使用哪个模板进行渲染
    template_name = 'index.html'
    # context_object_name 属性用于给上下文变量取名（在模板中使用该名字）
    context_object_name = 'articles'