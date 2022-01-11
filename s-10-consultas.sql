--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
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
select fecha_donativo, monto_donativo, (
  select avg(monto_donativo) 
  from donativo_ext
) promedio
from donativo_ext
where monto_donativo = (
	select max(monto_donativo)
	from donativo_ext
);

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

-- Utilizando una tabla temporal
-- Se necesita obtener información de todos los centros operativos, su nombre,
-- direccion, si son refugios su lema, si son clínicas su telefono de emergencia 
-- y si son oficinas se necesita el nombre del responsable
select nombre, direccion, lema, telefono_emergencia, responsable_nombre
from centros_operativos;

-- Se desea obtener el id, nombre, fecha_ingreso, tipo, nivel de cuidado
-- ,estatus y origen de todas las mascotas registradas
select m.mascota_id, m.nombre, m.fecha_ingreso,
  t.nombre_tipo, t.nivel_cuidado, e.descripcion as estatus,
  o.descripcion as origen
from mascota m, tipo_mascota t, estatus_mascota e, origen o
where m.tipo_mascota_id = t.tipo_mascota_id
and m.estatus_mascota_id = e.estatus_mascota_id
and o.origen_id = m.origen_id;

-- De las mascotas que han tenido citas de revisión, se desea obtener 
-- El nombre de la mascota, cuando fue su consulta,  el diagnóstico, la foto 
-- que el veterinario agrego y su nombre del veterinario
select m.nombre mascota , rm.fecha_revision, rm.diagnostico,
  rm.foto_mascota, e.nombre empleado
from mascota m
join revision_mascota rm
  on m.mascota_id = rm.mascota_id
join empleado e
  on e.empleado_id = rm.empleado_id;

-- Se desea consultar el nombre y grado académico del empleado
-- con mayor sueldo de cada centro operativo
select e.empleado_id,c.centro_operativo_id,
  e.nombre, g.titulo, e.sueldo, e.fecha_ingreso
from centro_operativo c
join (
  select c.centro_operativo_id, max(e.sueldo) mayor_sueldo
  from centro_operativo c
  join empleado e 
    on e.centro_operativo_id = c.centro_operativo_id
  group by c.centro_operativo_id
) q1
  on c.centro_operativo_id = q1.centro_operativo_id
join empleado e
   on e.centro_operativo_id = q1.centro_operativo_id
join grado_academico g
  on g.empleado_id = e.empleado_id
where q1.mayor_sueldo = e.sueldo
order by c.centro_operativo_id asc;



