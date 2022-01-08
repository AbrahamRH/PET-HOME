--@autor:           Juárez Pérez Hugo, Ramírez Hernández Abraham
--@Fecha creación:  2021-12-28
--@Descripción:     Script para realizar la carga inicial todas las tablas de la base de datos.ABORT

--Nos conectamos al usuario administrador
connect rj_proy_admin/rj_admin

--Indices relacionados a los empleados
create index empleado_nombre_completo_ix on empleado(upper(nombre || apellido_paterno ||apellido_materno));
--create index empleado_curp_ix on empleado(lower(curp));

--Indices relacionadas a los centros operativos
create index centro_operativo_nombre_ix on centro_operativo(nombre);

--Indices relacionados a las mascotas
create index mascota_folio_ix on mascota(lower(folio));
create index mascota_nombre_ix on mascota(lower(nombre));
create index mascota_cliente_id_ix on mascota(cliente_id);
create index mascota_estatus_id_ix on mascota(estatus_mascota_id);

--Indices relacionados a la adopcion
create index adopcion_mascota_cliente_id_ix on adopcion(mascota_id,cliente_id);
create index revision_mascota_empleado_mascota_ix 
on revision_mascota(empleado_id,mascota_id);

--Indices unique
create unique index centro_operativo_codigo_uix on centro_operativo(codigo);
create unique index empleado_curp_uix on empleado(curp);
create unique index cliente_usuario_uix on cliente(usuario);
