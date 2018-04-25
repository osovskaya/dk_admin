from django.shortcuts import render
from datetime import datetime

from .models import Slider, Contacts, Person, Event, Video


def index(request):
    photos = Slider.objects.all()
    company = Contacts.objects.get(id=1)
    current_year = datetime.now().year
    context = {
        'photos': photos,
        'company': company,
        'year': current_year
    }
    return render(request, 'dk/index.html', context)

def persons(request):
    persons = Person.objects.all()
    company = Contacts.objects.get(id=1)
    current_year = datetime.now().year
    context = {
        'persons': persons,
        'company': company,
        'year': current_year
    }
    return render(request, 'dk/persons.html', context)

def concerts(request):
    events = Event.objects.filter(type=Event.EVENT)
    company = Contacts.objects.get(id=1)
    current_year = datetime.now().year
    context = {
        'events': events,
        'company': company,
        'year': current_year,
        'title': 'Фото з концертiв та виступiв'
    }
    return render(request, 'dk/concerts.html', context)

def exhibitions(request):
    events = Event.objects.filter(type=Event.EXHIBITION)
    company = Contacts.objects.get(id=1)
    current_year = datetime.now().year
    context = {
        'events': events,
        'company': company,
        'year': current_year,
        'title': 'Виставки'
    }
    return render(request, 'dk/concerts.html', context)

def videos(request):
    videos = Video.objects.all()
    company = Contacts.objects.get(id=1)
    current_year = datetime.now().year
    context = {
        'videos': videos,
        'company': company,
        'year': current_year,
    }
    return render(request, 'dk/videos.html', context)

def contacts(request):
    company = Contacts.objects.get(id=1)
    current_year = datetime.now().year
    context = {
        'company': company,
        'year': current_year,
    }
    return render(request, 'dk/contacts.html', context)
