--@autor:           Abraham Ramírez Hernández, Hugo Juárez Pérez
--@Fecha creación:  2021-12-21
--@Descripción:     Script para crear los usuarios de user y administrador

Prompt Creando roles
create role rol_admin;
create role rol_user;

grant create session, create table, create procedure, create trigger,
	create sequence, create view, create synonym to rol_admin;
grant create session, create public synonym to rol_user;

Prompt Creando usuarios y asignando roles
create user rj_proy_admin identified by rj_admin quota unlimited on users; 
create user rj_proy_user identified by rj_user;

grant rol_admin to rj_proy_admin;
grant rol_user to rj_proy_user;
