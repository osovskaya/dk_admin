from django.db import models
from django.utils.translation import gettext_lazy as _


class Photo(models.Model):
    filepath = models.ImageField('Фото', upload_to='photos/%Y/%m/')
    date_add = models.DateTimeField('Дата добавления', auto_now_add=True)
    date_upd = models.DateTimeField('Дата обновления', auto_now=True)

    def __str__(self):
        return self.filepath.name.split('/')[-1:][0]

    class Meta:
        verbose_name = _('Photo')
        verbose_name_plural = _('Photos')
