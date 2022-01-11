from django.http.response import HttpResponse
from django.shortcuts import render

from django.db import connection
import cx_Oracle
import base64

# Create your views here.

def home(request):
    return HttpResponse('Hello, World!')

def Refugio(request):

    mascota_en_adopcion = en_adopcion()


    lista_mascotas = []

    for i in mascota_en_adopcion:
        info = {
            'data': i,
            'foto': str(base64.b64encode(i[4].read() ), 'utf-8')
        }
        lista_mascotas.append(info)

    data = {
        'Mascotas' : lista_mascotas
        
    }

    print(mascota_en_adopcion)
    return render(request, 'core/Refugio.html', data )

def Mascota(request):

    fotos_mascota = mostrar_revisiones()


    lista_mascotas = []

    for i in fotos_mascota:
        info = {
             'data': i,
             'foto': str( base64.b64encode(i[2].read() ), 'utf-8' )
        }
        lista_mascotas.append(info)




    data = {
        'revisiones': lista_mascotas,
        'veterinarios':mostrar_veterinarios(),
    }
    

    if request.method == 'POST':
        mascota = request.POST.get('nombre')
        veterinario_id = request.POST.get('veterinario')
        diagnostico = request.POST.get('diagnostico')
        foto = request.FILES['foto'].read()

        print(veterinario_id)

        salida = nueva_revision(mascota, veterinario_id, diagnostico, foto)
        if salida == 1 :
            data['mensaje'] = 'Agregado Correctamente!'
        else:
            data['mensaje'] = 'Hubo un error y NO se ha guardado el registro...'



    return render(request, 'core/Mascota.html', data )

#Metodos de la Clinica
    #Metodos auxiliares para las consultas, en el refugio
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

def mostrar_revisiones():
    django_cursor = connection.cursor()
    cursor = django_cursor.connection.cursor()

    salida = []
    for row in cursor.execute('select mascota_id, diagnostico, foto_mascota  from revision_mascota'):
        salida.append(row)

    return salida

def nueva_revision(mascota, veterinario, diagnostico, foto):
    django_cursor = connection.cursor()
    cursor = django_cursor.connection.cursor()

    salida = cursor.var(cx_Oracle.NUMBER)

    if not mascota.isdigit():
        salida = 0
        return salida
    elif not veterinario.isdigit():
        salida = 0
        return salida
    elif len(diagnostico) > 200 :
        salida = 0
        return salida
    elif foto is  None:
        salida = 0
        return salida
    else:   
        cursor.callproc("SP_NUEVA_REVISION_MASCOTA_WEB",[mascota,veterinario,diagnostico,foto,salida])
        return salida.getvalue()
    

#Métodos para el refugio
def en_adopcion():
    django_cursor = connection.cursor()
    cursor = django_cursor.connection.cursor()

    salida = []

    for row in cursor.execute('select * from v_mascotas_en_adopcion'):
        salida.append(row)

    return salida