from django.contrib import admin

from .models import Contacts, Event

admin.site.register(Contacts)
admin.site.register(Event)
