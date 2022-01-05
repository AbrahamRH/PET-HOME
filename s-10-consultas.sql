--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-28
--@Descripción:     (s-10-consultas) - Script que contiene consultas 
-- 									a nuestra base de datos

-- Se desea saber que  mascotas se encuentran en proceso de 
-- adopcion o si pueden ser adoptadas seleccionando su nombre, edad,
-- tipo de mascota, nombre del refugio y direccion asi como el estatus de la mascota.
select m.nombre nombre_mascota, trunc((sysdate - m.fecha_nacimiento)/365) edad, 
	t.nombre_tipo, c.nombre nombre_refugio, c.direccion, em.descripcion
from mascota m, tipo_mascota t, refugio r, centro c, estatus_mascota em
where m.tipo_mascota_id = t.tipo_mascota_id
and m.estatus_mascota_id  = em.estatus_mascota_id
and m.centro_operativo_id = r.centro_operativo_id
and r.centro_operativo_id = c.centro_operativo_id;


-- Se desea saber la fecha y el monto de la donacion más grande realizada y
-- compararla con el promedio de la tabla externa
select fecha_donativo, monto_donativo, avg(monto_donativo) promedio
from donativo_ext
where monto_donativo = (
	select max(monto_donativo)
	from donativo_ext
)
group by fecha_donativo, monto_donativo;

--Consulta utilizando una vista
-- Se desea obtener el nombre completo, id y sueldo del gerente con mayor sueldo mensual
select g.empleado_id, g.nombre, g.apellido_paterno, g.apellido_materno, e.sueldo
from v_lista_gerentes g
join empleado e
  on e.empleado_id = g.empleado_id
where e.sueldo = (
	select max(sueldo)
	from empleado
);

--Consulta con un sinonimo y álgebra relacional
-- Seleccionar todos los datos de los centros operativos menos de los que sean oficinas
select * 
from centro
minus 
select * 
from centro
where es_oficina = 1;

select rm.empleado_id,m.mascota_id, m.nombre, rm.foto_mascota,
  rm.fecha_revision
from revision_mascota rm
join mascota m
on rm.mascota_id = m.mascota_id;
group by rm.empleado_id,m.mascota_id, m.nombre, rm.foto_mascota, rm.fecha_revision;

-- Utilizando una tabla temporal
-- Se necesita obtener información de todos los centros operativos, su nombre,
-- direccion, si son refugios su lema, si son clínicas su telefono de emergencia 
-- y si son oficinas se necesita el nombre del responsable
select nombre, direccion, lema, telefono_emergencia, responsable_nombre
from centros_operativos;

		select m.mascota_id, m.nombre, m.fecha_ingreso,
			t.nombre_tipo, t.nivel_cuidado, e.descripcion as estatus,
			o.descripcion as origen
		from mascota m, tipo_mascota t, estatus_mascota e, origen o
		where m.tipo_mascota_id = t.tipo_mascota_id
		and m.estatus_mascota_id = e.estatus_mascota_id
		and o.origen_id = m.origen_id;

