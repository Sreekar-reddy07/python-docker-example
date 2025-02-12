from django.shortcuts import render

from django.http import HttpResponse

def home(request):
    return HttpResponse("<h1>Welcome to My Django Website!</h1>")
    return render(request, 'test_app/home.html')
