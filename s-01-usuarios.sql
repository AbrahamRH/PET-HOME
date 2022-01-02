--@autor:           Abraham Ramírez Hernández, Hugo Juárez Pérez
--@Fecha creación:  2021-12-21
--@Descripción:     Script para crear los usuarios de invitado y administrador

Prompt Conectandose como sysdba
connect sys as sysdba

set serveroutput on 
set sqlblanklines on

Prompt Validando la existencia de los usuarios
declare
	v_count number(1,0);
begin
	select count(*) into v_count
	from dba_users
	where username = 'RJ_PROY_ADMIN';
	if v_count > 0 then 
		dbms_output.put_line('Eliminando usuarios existentes');
		execute immediate 'drop user rj_proy_admin cascade';
		execute immediate 'drop user rj_proy_invitado cascade';
		execute immediate 'drop role rol_admin';
		execute immediate 'drop role rol_invitado';
	end if;
end;
/

Prompt Creando roles
create role rol_admin;
create role rol_invitado;

grant create session, create table, create procedure, create trigger,
	create sequence, create view, create synonym to rol_admin;
grant create session to rol_invitado;

Prompt Creando usuarios y asignando roles
create user rj_proy_admin identified by rj_admin quota unlimited on users; 
create user rj_proy_invitado identified by rj_invitado;

grant rol_admin to rj_proy_admin;
grant rol_invitado to rj_proy_invitado;
