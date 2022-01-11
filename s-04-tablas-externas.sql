--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2021-12-27
--@Descripción:     (s-04-tablas-externas) - creación de la tabla externa
-- 								  para los donativos de otros lugares

Prompt conectandose como sys
connect sys/system as sysdba

Prompt creando directorio ext_dir
create or replace directory ext_dir as '/tmp/base_externa/';

grant read, write on directory ext_dir to rj_proy_admin;

Prompt conectandose al usuario administrador
connect rj_proy_admin/rj_admin

Prompt Creando la tabla externa
create table donativo_ext (
	fecha_donativo date,
	monto_donativo number(10,2)
)
organization external(
	type oracle_loader 
	default directory ext_dir
	access parameters (
		records delimited by newline
		badfile ext_dir:'donativo_ext_bad.log'
		logfile ext_dir:'mascota_ext_.log'
		fields terminated by ','
		lrtrim
		missing field values are null (
			fecha_donativo date mask "dd/mm/yyyy",
			monto_donativo
		)
	)
	location('donativo_ext.csv')
)
reject limit unlimited;

Prompt creando directorio
!mkdir -p /tmp/base_externa

!cp donativo_ext.csv /tmp/base_externa
!chmod 777 /tmp/base_externa

