from django.db import models


class TestModel(models.Model):
    """ Created fields for testing """
    
    name = models.CharField(verbose_name='First Name', max_length=164)
    age = models.PositiveIntegerField(verbose_name='Age')
    personal_status = models.BooleanField('Status', default=True)