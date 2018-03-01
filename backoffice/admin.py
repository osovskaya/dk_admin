from django.contrib import admin

from .models import Contacts, Event, Video

admin.site.register(Contacts)
admin.site.register(Event)
admin.site.register(Video)
