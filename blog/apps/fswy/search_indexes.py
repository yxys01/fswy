# -*- coding: utf-8 -*-

from haystack import indexes
from .models import Article


class ArticleIndex(indexes.SearchIndex, indexes.Indexable):
    '''
    document:指定了将模型类中的哪些字段建立索引
    use_template:在模板文件夹中创建文件夹指明具体的字段建立索引
    '''
    text = indexes.CharField(document=True, use_template=True)
    views = indexes.IntegerField(model_attr='views')

    def get_model(self):
        # 为那个模型表建立索引
        return Article

    def index_queryset(self, using=None):
        return self.get_model().objects.all()

