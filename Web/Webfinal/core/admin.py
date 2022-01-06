from django.contrib import admin
from .models import Mascota, Cliente, RevisionMascota, CentroOperativo
# Register your models here.


admin.site.register(Mascota)
admin.site.register(Cliente)
admin.site.register(RevisionMascota)
admin.site.register(CentroOperativo)