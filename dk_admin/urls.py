from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from backoffice import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('persons/', views.persons, name='persons'),
    path('concerts/', views.concerts, name='concerts'),
    path('exhibitions/', views.exhibitions, name='exhibitions'),
    path('videos/', views.videos, name='videos'),
    path('contacts/', views.contacts, name='contacts'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
