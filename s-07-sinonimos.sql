--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-28
--@Descripción:     Script para la creación de sinonimos para el usuario invitado

--TODO:
--Verificar su funcionamiento

--Nos conectamos al usuario administrador para otorgar permisos
connect rj_proy_admin/rj_admin
grant select on mascota, cliente, refugio, oficina, clinica, adopcion
to rj_proy_invitado;

--Nos conectamos al usuario invitado para la creacion de los sinonimos
-- ya teniendo los permisos otorgador por el administrador

connect rj_proy_invitado/rj_invitado
create or replace synonym mascota for rj_proy_admin.mascota;
create or replace synonym cliente for rj_proy_admin.cliente;
create or replace synonym regufio for rj_proy_admin.refugio;
create or replace synonym oficina for rj_proy_admin.oficina;
create or replace synonym clinica for rj_proy_admin.clinica;
create or replace synonym adopcion for rj_proy_admin.adopcion;







