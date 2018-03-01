from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _


class MediaAppConfig(AppConfig):
    name = 'media_app'
    verbose_name = _('Media application')
