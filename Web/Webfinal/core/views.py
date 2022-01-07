from django.http.response import HttpResponse
from django.shortcuts import render

from django.db import connection
import cx_Oracle

# Create your views here.

def home(request):
    return HttpResponse('Hello, World!')

def Mascota(request):
    data = {
        'veterinarios':mostrar_veterinarios(),
    }
    

    if request.method == 'POST':
        mascota = request.POST.get('nombre')
        veterinario_id = request.POST.get('veterinario')
        diagnostico = request.POST.get('diagnostico')
        foto = request.FILES['foto'].read()
        salida = nueva_revision(mascota, veterinario_id, diagnostico, foto)
        if salida > 0 :
            data['mensaje'] = 'Agregado Correctamente!'
        else:
            data['mensaje'] = 'No se ha guardado...'



    return render(request, 'core/Mascota.html', data )


#Metodos auxiliares para las consultas
def listado_productos():
    django_cursor = connection.cursor()
    cursor = django_cursor.connection.cursor()
    out_cur = django_cursor.connection.cursor()
    cadena = out_cur.var(str)
    cursor.callproc("P_CO_OBTENER_DATOS", [4, cadena])
    print("OK")
    
    return cadena

def mostrar_veterinarios():
    django_cursor = connection.cursor()
    cursor = django_cursor.connection.cursor()

    salida = []
    for row in cursor.execute('select empleado_id, nombre from empleado where es_veterinario=1'):
        salida.append(row)
    
    return salida


def nueva_revision(mascota, veterinario, diagnostico, foto):
    django_cursor = connection.cursor()
    cursor = django_cursor.connection.cursor()

    salida = cursor.var(cx_Oracle.NUMBER)

    cursor.callproc("REVISION_MASCOTA_REF",[mascota,veterinario,diagnostico,foto,salida])

    return salida.getvalue()