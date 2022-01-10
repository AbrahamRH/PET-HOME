from django.urls import path
from  .views import Mascota, Refugio


urlpatterns = [
    path('Clinica/', Mascota ),
    path('Refugio/', Refugio),
]