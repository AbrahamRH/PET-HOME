# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Adopcion(models.Model):
    adopcion_id = models.IntegerField(primary_key=True)
    fecha_adopcion = models.DateField()
    es_ganador = models.BooleanField()
    descripcion_rechazo = models.CharField(max_length=200, blank=True, null=True)
    cliente = models.ForeignKey('Cliente', models.DO_NOTHING)
    mascota = models.ForeignKey('Mascota', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'adopcion'


class CentroOperativo(models.Model):
    centro_operativo_id = models.IntegerField(primary_key=True)
    direccion = models.CharField(max_length=100)
    nombre = models.CharField(max_length=40)
    latitud = models.DecimalField(max_digits=4, decimal_places=1)
    longitud = models.DecimalField(max_digits=4, decimal_places=1)
    codigo = models.CharField(unique=True, max_length=5, blank=True, null=True)
    es_refugio = models.BooleanField()
    es_clinica = models.BooleanField()
    es_oficina = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'centro_operativo'


class CentrosOperativos(models.Model):
    centro_operativo_id = models.IntegerField()
    direccion = models.CharField(max_length=100)
    nombre = models.CharField(max_length=40)
    latitud = models.DecimalField(max_digits=4, decimal_places=1)
    longitud = models.DecimalField(max_digits=4, decimal_places=1)
    codigo = models.CharField(max_length=5, blank=True, null=True)
    es_refugio = models.BooleanField()
    es_clinica = models.BooleanField()
    es_oficina = models.BooleanField()
    numero_de_registro = models.CharField(max_length=8)
    capacidad_maxima = models.IntegerField()
    logo = models.BinaryField(blank=True, null=True)
    lema = models.CharField(max_length=40)
    refugio_alterno_id = models.IntegerField(blank=True, null=True)
    hora_inicio = models.CharField(max_length=20)
    hora_fin = models.CharField(max_length=20)
    telefono_atencion = models.CharField(max_length=10)
    telefono_emergencia = models.CharField(max_length=10)
    persona_moral_rfc = models.CharField(max_length=12)
    firma_electronica = models.BinaryField()
    responsable_nombre = models.CharField(max_length=40)
    responsable_ap_pat = models.CharField(max_length=40)
    responsable_ap_mat = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'centros_operativos'


class Cliente(models.Model):
    cliente_id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=40)
    ap_paterno = models.CharField(max_length=40)
    ap_materno = models.CharField(max_length=40)
    direccion = models.CharField(max_length=40)
    ocupacion = models.CharField(max_length=40)
    #usuario = models.CharField(unique=True, max_length=50, blank=True, null=True)
    
    password = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'cliente'


class Clinica(models.Model):
    centro_operativo = models.OneToOneField(CentroOperativo, models.DO_NOTHING, primary_key=True)
    hora_inicio = models.CharField(max_length=20)
    hora_fin = models.CharField(max_length=20)
    telefono_atencion = models.CharField(max_length=10)
    telefono_emergencia = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'clinica'


class DireccionWeb(models.Model):
    direccion_web_id = models.IntegerField(primary_key=True)
    dominio_url = models.CharField(max_length=40)
    centro_operativo = models.ForeignKey('Refugio', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'direccion_web'


class Donativo(models.Model):
    donativo = models.OneToOneField('self', models.DO_NOTHING, primary_key=True, related_name='Donativo')
    fecha_donativo = models.DateField()
    monto_donativo = models.DecimalField(max_digits=10, decimal_places=2)
    cliente_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'donativo'


class Empleado(models.Model):
    empleado_id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=40)
    apellido_paterno = models.CharField(max_length=40)
    apellido_materno = models.CharField(max_length=40)
    curp = models.CharField(unique=True, max_length=18)
    fecha_ingreso = models.DateField()
    email = models.CharField(max_length=40)
    sueldo = models.DecimalField(max_digits=8, decimal_places=2)
    es_gerente = models.BooleanField()
    es_administrativo = models.BooleanField()
    es_veterinario = models.BooleanField()
    centro_operativo_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'empleado'


class EstatusMascota(models.Model):
    estatus_mascota_id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'estatus_mascota'


class GradoAcademico(models.Model):
    grado_academico_id = models.IntegerField(primary_key=True)
    titulo = models.CharField(max_length=40)
    fecha_titulacion = models.DateField()
    cedula_profesional = models.CharField(unique=True, max_length=20)
    empleado = models.ForeignKey(Empleado, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'grado_academico'


class HistoricoStatusMascota(models.Model):
    historico_status_mascota_id = models.IntegerField(primary_key=True)
    fecha_estatus = models.DateField()
    estatus_mascota = models.ForeignKey(EstatusMascota, models.DO_NOTHING)
    mascota = models.ForeignKey('Mascota', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'historico_status_mascota'


class Mascota(models.Model):
    mascota_id = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=40)
    folio = models.CharField(unique=True, max_length=8)
    fecha_ingreso = models.DateField()
    fecha_estatus = models.DateField()
    fecha_nacimiento = models.DateField()
    causa_muerte = models.CharField(max_length=40, blank=True, null=True)
    estatus_mascota = models.ForeignKey(EstatusMascota, models.DO_NOTHING)
    tipo_mascota = models.ForeignKey('TipoMascota', models.DO_NOTHING)
    centro_operativo = models.ForeignKey(CentroOperativo, models.DO_NOTHING, related_name='CentroOperativo')
    origen = models.ForeignKey('Origen', models.DO_NOTHING)
    cliente = models.ForeignKey(Cliente, models.DO_NOTHING, blank=True, null=True,related_name='Cliente')
    donador = models.ForeignKey(Cliente, models.DO_NOTHING, blank=True, null=True)
    mascota_padre = models.ForeignKey('self', models.DO_NOTHING, blank=True, null=True, related_name='MascotaP')
    mascota_madre = models.ForeignKey('self', models.DO_NOTHING, blank=True, null=True, related_name='MascotaM')
    centro_nacimiento = models.ForeignKey(CentroOperativo, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'mascota'


class Oficina(models.Model):
    centro_operativo = models.OneToOneField(CentroOperativo, models.DO_NOTHING, primary_key=True)
    persona_moral_rfc = models.CharField(unique=True, max_length=12)
    firma_electronica = models.BinaryField()
    responsable_nombre = models.CharField(max_length=40)
    responsable_ap_pat = models.CharField(max_length=40)
    responsable_ap_mat = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'oficina'


class Origen(models.Model):
    origen_id = models.IntegerField(primary_key=True)
    descripcion = models.CharField(max_length=40)

    class Meta:
        managed = False
        db_table = 'origen'


class Refugio(models.Model):
    centro_operativo = models.OneToOneField(CentroOperativo, models.DO_NOTHING, primary_key=True)
    numero_de_registro = models.CharField(unique=True, max_length=8)
    capacidad_maxima = models.IntegerField()
    logo = models.BinaryField(blank=True, null=True)
    lema = models.CharField(max_length=40)
    refugio_alterno = models.ForeignKey('self', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'refugio'


class RevisionMascota(models.Model):
    revision_mascota_id = models.IntegerField(primary_key=True)
    fecha_revision = models.DateField()
    diagnostico = models.CharField(max_length=200)
    foto_mascota = models.BinaryField()
    empleado = models.ForeignKey(Empleado, models.DO_NOTHING)
    mascota = models.ForeignKey(Mascota, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'revision_mascota'


class TipoMascota(models.Model):
    tipo_mascota_id = models.IntegerField(primary_key=True)
    nombre_tipo = models.CharField(max_length=40)
    nivel_cuidado = models.BooleanField()

    class Meta:
        managed = False
        db_table = 'tipo_mascota'
