--@autor:           Juárez Pérez Hugo, Abraham Ramírez Hernández
--@Fecha creación:  2021-12-28
--@Descripción:     Script para la creación de sinonimos para el usuario user

--TODO:
--Verificar su funcionamiento

--Nos conectamos al usuario administrador para otorgar permisos
connect rj_proy_admin/rj_admin
grant select on mascota to rol_user;
grant select on cliente to rol_user;
grant select on refugio to rol_user;
grant select on oficina to rol_user;
grant select on clinica to rol_user;
grant select on adopcion to rol_user;
grant select on centro_operativo to rol_user;

--Nos conectamos al usuario user para la creacion de los sinonimos
-- ya teniendo los permisos otorgador por el administrador
Prompt Conectandonos como user
connect rj_proy_user/rj_user
create or replace public synonym mascota for rj_proy_admin.mascota;
create or replace public synonym cliente for rj_proy_admin.cliente;
create or replace public synonym refugio for rj_proy_admin.refugio;
create or replace public synonym oficina for rj_proy_admin.oficina;
create or replace public synonym clinica for rj_proy_admin.clinica;
create or replace public synonym adopcion for rj_proy_admin.adopcion;
create or replace public synonym centro for rj_proy_admin.centro_operativo;

-- Sinónimos privados de cada tabla
connect rj_proy_admin/rj_admin

set serveroutput on 
declare
	v_tabla  all_tables.table_name%type;
	v_consulta varchar2(200);
	cursor cur_tablas is 
		select table_name from all_tables
		where owner = 'RJ_PROY_ADMIN';
begin 
	for tabla in cur_tablas loop
		v_tabla := 'RJ_' || tabla.table_name;
		v_consulta := 'create or replace synonym '
			|| v_tabla || ' for ' || tabla.table_name;
		execute immediate v_consulta;
	end loop;
end;
/


