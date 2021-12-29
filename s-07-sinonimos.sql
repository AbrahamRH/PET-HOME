--@autor:           Juárez Pérez Hugo, Abraham Ramírez Hernández
--@Fecha creación:  2021-12-28
--@Descripción:     Script para la creación de sinonimos para el usuario invitado

--TODO:
--Verificar su funcionamiento

--Nos conectamos al usuario administrador para otorgar permisos
connect rj_proy_admin/rj_admin
grant select on mascota, cliente, refugio, oficina, clinica, adopcion
to rj_proy_invitado;

Prompt Concediendo permisos para la creación de sinonimos al usuario invitado
connect sys/system as sysdba
grant create public synonym to rj_proy_invitado;


--Nos conectamos al usuario invitado para la creacion de los sinonimos
-- ya teniendo los permisos otorgador por el administrador
Prompt Conectandonos como invitado
connect rj_proy_invitado/rj_invitado
create or replace public synonym mascota for rj_proy_admin.mascota;
create or replace public synonym cliente for rj_proy_admin.cliente;
create or replace public synonym regufio for rj_proy_admin.refugio;
create or replace public synonym oficina for rj_proy_admin.oficina;
create or replace public synonym clinica for rj_proy_admin.clinica;
create or replace public synonym adopcion for rj_proy_admin.adopcion;

-- Sinónimos privados de cada tabla
connect rj_proy_admin/rj_admin
set serveroutput on 
declare
	v_tabla  all_tables.table%type;
	v_consulta varchar2(200);
	cursor cur_tablas is 
		select table_name from all_tables
		where owner = 'RJ_PROY_ADMIN';
begin 
	from tabla in cur_tablas loop
		v_tabla = 'RJ_' || tabla.table_name;
		v_consulta = 'create or replace private synonym '
			|| v_tabla || 'for' || tabla.table_name;
		execute immediate v_consulta;
	end loop;
end;
/


