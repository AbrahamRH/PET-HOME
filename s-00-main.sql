--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-23
--@Descripción:     Script para realizar una prueba de los scripts principales

connect sys/system as sysdba
whenever sqlerror exit rollback

Prompt Verificando la existencia de usuarios

set serveroutput on
set sqlblanklines on

declare
  v_count number (1,0);
begin
  select count(*) into v_count
  from dba_users
  where username = 'RJ_PROY_ADMIN';
	if v_count > 0 then 
		dbms_output.put_line('Eliminando usuarios existentes');
		execute immediate 'drop user rj_proy_admin cascade';
		execute immediate 'drop user rj_proy_user cascade';
		execute immediate 'drop role rol_admin';
		execute immediate 'drop role rol_user';
	end if;
end;
/

prompt Creando usuarios
@s-01-usuarios.sql

prompt accediendo al usuario administrador
connect rj_proy_admin/rj_admin

prompt Creando objetos
@s-02-entidades.sql

prompt Creando tablas temporales
@s-03-tablas-temporales.sql

prompt Creando tablas externas
@s-04-tablas-externas.sql

prompt Creando secuencias
@s-05-secuencias.sql

prompt Creando índices
@s-06-indices.sql

prompt Creando sinónimos
@s-07-sinonimos.sql

prompt Creando vistas
@s-08-vistas.sql

prompt Poblando tablas
@s-09-carga-inicial.sql

prompt Compilando triggers
@s-11-tr-espera-15-dias.sql
@s-11-tr-ganador-adopcion.sql
@s-11-tr-historico-estatus-mascota.sql
@s-11-tr-maximo-adopciones.sql

prompt Compilando procedimientos
@s-13-p-asignar-padres-mascota.sql
@s-13-p-datos-centro-operativo.sql

prompt Compilando funciones
@s-15-f1-insertar-foto.sql
@s-15-f2-ingresos-mensuales.sql
@s-15-f3-exporta-mascota-csv.sql

@s-13-p-revision-mascota.sql

prompt Listo!
