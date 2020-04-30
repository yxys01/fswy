# 创建了新的tags标签文件后必须重启服务器

from django import template
from ..models import Article, Category, Tag, Carousel, FriendLink, BigCategory, Activate, Keyword
from django.db.models.aggregates import Count
from django.utils.html import mark_safe
import re

# 注册自定义标签函数
register = template.Library()

# 获取导航条大分类查询集
@register.simple_tag
def get_bigcategory_list():
    '''返回大分类列表'''
    return BigCategory.objects.all()

# 返回文章分类查询集
@register.simple_tag
def get_category_list(id):
    '''返回小分类列表'''
    return Category.objects.filter(bigcategory_id=id)

# 获取滚动的大幻灯片查询集、获取左侧的幻灯片查询集，这两个部分用的图片是一样的
@register.simple_tag
def get_carousel_index():
    return Carousel.objects.filter(number__lte=5)

# 获取热门排行数据查询集，参数：sort 文章类型，num 数量
# 文章相关标签函数，和热门文章使用同一个函数
@register.simple_tag
def get_article_list(sort=None, num=None):
    '''获取指定排序方式和指定数量的文章'''
    if sort:
        if num:
            return Article.objects.order_by(sort)[:num]
        return Article.objects.order_by(sort)
    if num:
        return Article.objects.all()[:num]
    return Article.objects.all()

# 获取右侧栏热门专题幻灯片查询集
@register.simple_tag
def get_carousel_right():
    return Carousel.objects.filter(number__gt=5, number__lte=10)

# 获取归档文章查询集
@register.simple_tag
def get_data_date():
    '''获取文章发表的不同月份'''
    article_dates = Article.objects.datetimes('create_date', 'month', order='DESC')
    return article_dates

# 获取文章标签信息，参数文章ID
@register.simple_tag
def get_article_tag(article_id):
    return Tag.objects.filter(article=article_id)

# 返回标签查询集
@register.simple_tag
def get_tag_list():
    """返回标签列表"""
    return Tag.objects.annotate(total_num=Count('article')).filter(total_num__gt=0)


# 返回活跃的友情链接查询集
@register.simple_tag
def get_friends():
    """获取活跃的友情链接"""
    return FriendLink.objects.filter(is_show=True, is_active=True)

# 获取标题
@register.simple_tag
def get_title(category):
    a = BigCategory.objects.filter(slug=category)
    if a:
        return a[0]

# 获取前一篇文章，参数当前文章 ID
@register.simple_tag
def get_article_previous(article_id):
    has_previous = False
    id_previous = int(article_id)
    while not has_previous and id_previous >= 1:
        article_previous = Article.objects.filter(id=id_previous - 1).first()
        if not article_previous:
            id_previous -= 1
        else:
            has_previous = True
    if has_previous:
        article = Article.objects.filter(id=id_previous).first()
        return article
    else:
        return

# 获取下一篇文章，参数当前文章ID
@register.simple_tag
def get_article_next(article_id):
    has_next = False
    id_next = int(article_id)
    article_id_max = Article.objects.all().order_by('-id').first()
    id_max = article_id_max.id
    while not has_next and id_next <= id_max:
        article_next = Article.objects.filter(id=id_next + 1).first()
        if not article_next:
            id_next += 1
        else:
            has_next = True
    if has_next:
        article = Article.objects.filter(id=id_next).first()
        return article
    else:
        return


# 返回公告查询集
@register.simple_tag
def get_active():
    """"获取活跃的友情链接"""
    text = Activate.objects.filter(is_active=True)
    if text:
        text = text[0].text
    else:
        text = ''
    return mark_safe(text)