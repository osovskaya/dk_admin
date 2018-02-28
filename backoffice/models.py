from django.db import models
from django.utils.translation import gettext_lazy as _


class ContactInformation(models.Model):
    full_name = models.CharField('Полное название', max_length=255)
    short_name = models.CharField('Краткое название', max_length=255)
    phone = models.CharField('Телефон', max_length=20)
    email = models.CharField('Email', max_length=255)
    city = models.CharField('Город', max_length=255)
    street = models.CharField('Улица', max_length=255)
    facebook_link = models.CharField('Ссылка facebook.com', max_length=255, blank=True)
    vkontakte_link = models.CharField('Сслыка vk.com', max_length=255, blank=True)
    date_add = models.DateTimeField('Дата добавления', auto_now_add=True)
    date_upd = models.DateTimeField('Дата обновления', auto_now=True)

    def __str__(self):
        return self.short_name

    class Meta:
        verbose_name = _('ContactInformation')
        verbose_name_plural = _('ContactInformation')
