from django.urls import path

from apps.database_app.views import Main


urlpatterns = [
    path('', Main.as_view())
]