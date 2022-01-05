--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2022-01-04
--@Descripción:     (s-15-f3-exporta-mascota-csv-prueba) - Prueba de la funcion f3


prompt ====================================================
prompt
prompt Script de prueva para la función exporta_mascota_csv
prompt
prompt ====================================================


!mkdir -p /tmp/archivos
!chmod 777 /tmp/archivos
!touch /tmp/archivos/mascotas_pethome.csv

connect sys/system as sysdba
create or replace directory archivos_csv as '/tmp/archivos';
grant read, write on directory archivos_csv to rol_admin;

connect rj_proy_admin/rj_admin;

set serveroutput on
declare
	v_return_value boolean;
begin 
	dbms_output.put_line('Entre');
	v_return_value := exporta_mascota_csv('ARCHIVOS_CSV','mascotas_pethome.csv');
	if v_return_value = true then
		dbms_output.put_line('OK, se creo el archivo mascotas_pethome.csv');
	else
		raise_application_error(-20007,'ERROR: No se creo el archivo con los datos');
	end if;
end;
/
