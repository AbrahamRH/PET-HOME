--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-28
--@Descripción:     Script para realizar la carga inicial todas las tablas de la base de datos.ABORT

--TODO:
--Revisar su funcionamiento

--Nos conectamos al usuario administrador
connect rj_proy_admin/rj_admin



--Indices relacionados a los empleados
create index indice_empleado_id on empleado(empleado_id);

create index indice_empleado on empleado(upper(nombre,ap_paterno,ap_materno));


--Indices relacionadas a los centros operativos (?)
create index indice_CO_id on centro_operativo(centro_operativo_id);

create index indice_CO on centro_operativo(nombre);



--Indices relacionados a las mascotas
create index indice_mascota on mascota(mascota_id);

--Indices relacionados a los clientes
create index indice_cliente_id on cliente(cliente_id);
create index indice_cliente on cliente(nombre, usuario); --(?) Estara bien este????


