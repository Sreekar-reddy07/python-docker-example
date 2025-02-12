from django.shortcuts import render

def home(request):
    return render(request, 'test_app/home.html')
