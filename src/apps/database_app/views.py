from django.views.generic import View
from django.http import HttpResponse


class Main(View):
    """ Main class for test """
    
    def get(self, request, *args, **kwargs):
        return HttpResponse({'status200': '200'})