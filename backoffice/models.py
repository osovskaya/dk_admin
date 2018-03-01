from django.db import models
from django.utils.translation import gettext_lazy as _
from media_app.models import Photo


class Contacts(models.Model):
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
        verbose_name = _('Contact')
        verbose_name_plural = _('Contacts')


class Event(models.Model):
    EVENT = 'EVENT'
    EXHIBITION = 'EXHIBITION'

    TYPE_CHOICES = (
        (EVENT, 'Мероприятие'),
        (EXHIBITION, 'Выставка'),
    )

    name = models.CharField('Полное название', max_length=255)
    type = models.CharField('Тип события', choices=TYPE_CHOICES, max_length=255, default=EVENT)
    event_date = models.DateField('Дата события')
    photo = models.ManyToManyField(Photo, related_name='events', related_query_name='event')
    date_add = models.DateTimeField('Дата добавления', auto_now_add=True)
    date_upd = models.DateTimeField('Дата обновления', auto_now=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = _('Event')
        verbose_name_plural = _('Events')

