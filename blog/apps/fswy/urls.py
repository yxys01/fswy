# from .views import (IndexView, DetailView, MessageView, AboutView, DonateView, ExchangeView, ProjectView, QuestionView,MySearchView)
#                     # MySearchView, LoveView, LinkView)
#
#
# urlpatterns = [
#     # 首页
#     path('', IndexView.as_view(template_name='index.html'), name='index'), # 主页，自然排序
#     # path('category/<str:bigslug>/<slug>', IndexView.as_view(template_name='content.html'), name='category'),
#     # 分类页面
#     re_path(r'^category/(?P<bigslug>.*?)/(?P<slug>.*?)',
#             IndexView.as_view(template_name='content.html'),
#             name='category'),
#     # path(r'category/about/', AboutView, name='about'),
#
#     # 给我留言
#     path(r'category/message/', MessageView, name='message'),
#     # 关于自己
#     path(r'category/about/', AboutView, name='about'),
#     # 赞助作者
#     path(r'category/donate/', DonateView, name='donate'),
#     # 技术交流
#     path(r'category/exchange/', ExchangeView, name='exchange'),
#     # 项目合作
#     path(r'category/project/', ProjectView, name='project'),
#     # 提问交流
#     path(r'category/question/', QuestionView, name='question'),
#     # 分类页面
#     # re_path(r'^category/(?P<bigslug>.*?)/(?P<slug>.*?)', IndexView.as_view(template_name='content.html'), name='category'),
#     # 归档页面
#     re_path(r'^date/(?P<year>\d+)/(?P<month>\d+)/$', IndexView.as_view(template_name='archive.html'), name='date'),
#     # 标签页面
#     re_path(r'^tag/(?P<tag>.*?)/$', IndexView.as_view(template_name='content.html'), name='tag'),
#     # 文章详情页面
#     re_path(r'^article/(?P<slug>.*?)/$', DetailView.as_view(), name='article'),
#     # 全文搜索
#     re_path(r'^search/$', MySearchView.as_view(), name='search'),
#
#     # re_path(r'^category/about/$', AboutView, name='about'),
# ]
from django.conf.urls import url
from django.urls import path,re_path
from .views import (IndexView, DetailView, MessageView, AboutView, DonateView, ExchangeView, ProjectView, QuestionView, MySearchView, LoveView, LinkView)

urlpatterns = [
    # 首页
    # url(r'^$', IndexView.as_view(template_name='index.html'), name='index'),  # 主页，自然排序
    path(r'', IndexView.as_view(template_name='index.html'), name='index'), # 主页，自然排序

    # 申请友情链接
    # url(r'^link/$', LinkView, name='link'),
    path(r'link/', LinkView, name='link'),

    # 给我留言
    # url(r'^category/message/$', MessageView, name='message'),
    path(r'category/message/', MessageView, name='message'),

    # 关于自己
    # url(r'^category/about/$', AboutView, name='about'),
    path(r'category/about/', AboutView, name='about'),

    # 赞助作者
    path(r'category/donate/', DonateView, name='donate'),
    # url(r'^category/donate/$', DonateView, name='donate'),

    # 技术交流
    path(r'category/exchange/', ExchangeView, name='exchange'),
    # url(r'^category/exchange/$', ExchangeView, name='exchange'),

    # 项目合作
    path(r'category/project/', ProjectView, name='project'),
    # url(r'^category/project/$', ProjectView, name='project'),

    # 提问交流
    path(r'category/question/', QuestionView, name='question'),
    # url(r'^category/question/$', QuestionView, name='question'),

    # 分类页面
    # url(r'^category/(?P<bigslug>.*?)/(?P<slug>.*?)', IndexView.as_view(template_name='content.html'), name='category'),
    re_path(r'^category/(?P<bigslug>.*?)/(?P<slug>.*?)', IndexView.as_view(template_name='content.html'), name='category'),

    # 归档页面
    # url(r'^date/(?P<year>\d+)/(?P<month>\d+)/$', IndexView.as_view(template_name='archive.html'), name='date'),
    re_path(r'^date/(?P<year>\d+)/(?P<month>\d+)/$', IndexView.as_view(template_name='archive.html'), name='date'),


    # 标签页面
    # url(r'^tag/(?P<tag>.*?)/$', IndexView.as_view(template_name='content.html'), name='tag'),
    re_path(r'^tag/(?P<tag>.*?)/$', IndexView.as_view(template_name='content.html'), name='tag'),

    # 文章详情页面
    # url(r'^article/(?P<slug>.*?)/$', DetailView.as_view(), name='article'),
    re_path(r'^article/(?P<slug>.*?)/$', DetailView.as_view(), name='article'),

    # 全文搜索
    # url(r'^search/$', MySearchView.as_view(), name='search'),
    path(r'search/', MySearchView.as_view(), name='search'),

    # 喜欢
    # url(r'^love/$', LoveView, name='love'),
    path(r'love/', LoveView, name='love'),
]