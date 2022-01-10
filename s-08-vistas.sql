--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-27
--@Descripción:     (s-08-vistas) - Script para la creación de vistas


-- V_MASCOTAS_EN_ADOPCION
-- Vista creada para ver que mascotas pueden solicitar para adopcion
create or replace view v_mascotas_en_adopcion
(
	nombre, fecha_nacimiento, nombre_tipo, estatus
) as select m.nombre, m.fecha_nacimiento, t.nombre_tipo, em.descripcion
--  ,rm.foto_mascota
from mascota m
join tipo_mascota t 
	on m.tipo_mascota_id = t.tipo_mascota_id
join estatus_mascota em 
	on em.estatus_mascota_id = m.estatus_mascota_id
--join revision_mascota rm
--  on rm.mascota_id = m.mascota_id
where em.descripcion in ('DISPONIBLE_PARA_ADOPCIÓN', 'SOLICITADA_PARA_ADOPCIÓN')
order by em.descripcion;


-- V_CLIENTE
-- Vista para verficar los datos del cliente sin su contraseña de usuarios
create or replace view v_cliente 
(
	cliente_id, nombre, apellido_paterno, apellido_materno, ocupacion
)as select cliente_id, nombre, ap_paterno, ap_materno, ocupacion
from cliente;

-- V_LISTA_GERENTES
create or replace view v_lista_gerentes
(
	empleado_id, nombre, apellido_paterno, apellido_materno,
	centro_operativo_id, nombre_centro, direccion
) as select e.empleado_id, e.nombre, e.apellido_paterno, e.apellido_materno,
	c.centro_operativo_id, c.nombre, c.direccion
	from empleado e
	join centro_operativo c
		on e.centro_operativo_id = c.centro_operativo_id
	where e.es_gerente = 1;
