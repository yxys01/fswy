"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
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
from django.urls import path, include,re_path
from django.contrib.sitemaps.views import sitemap
from apps.fswy.sitemaps import ArticleSitemap, CategorySitemap, TagSitemap

from django.conf import settings
from rest_framework.routers import DefaultRouter
from apps.api import views as api_views
from apps.fswy.feeds import AllArticleRssFeed
if settings.API_FLAG:
    router = DefaultRouter()
    router.register(r'users', api_views.UserListSet)
    router.register(r'articles', api_views.ArticleListSet)
    router.register(r'tags', api_views.TagListSet)
    router.register(r'categorys', api_views.CategoryListSet)

app_name = 'fswy'

# 网站地图
sitemaps = {
    'articles': ArticleSitemap,
    'tags': TagSitemap,
    'categories': CategorySitemap
}


urlpatterns = [
    # 后台管理应用，django自带
    path('admin/', admin.site.urls),
    # 用户
    path('accounts/', include(('apps.user.urls', "apps.user"), namespace="accounts")),
    # fswy 应用
    path('', include(('apps.fswy.urls', "apps.fswy"), namespace="blog")),
    # 评论栏
    path('comment/', include(('apps.comment.urls','apps.comment'), namespace='comment')),
    # 网站地图
    # re_path(r'^sitemap.xml$', sitemap, {'sitemaps': sitemaps}, name='django.contrib.sitemaps.views.sitemap'),
    path(r'sitemap.xml', sitemap, {'sitemaps': sitemaps}, name='django.contrib.sitemaps.views.sitemap'),
    # rss订阅
    path(r'feed/', AllArticleRssFeed(), name='rss'),

    path(r'mdeditor/', include(('mdeditor.urls', 'mdeditor'), namespace='mdeditor')),

]
if settings.API_FLAG:
    urlpatterns.append(path(r'api/v1/', include((router.urls, 'router'), namespace='api')))    # restframework