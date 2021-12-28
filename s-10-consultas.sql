--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-28
--@Descripción:     (s-10-consultas) - Script que contiene consultas 
-- 									a nuestra base de datos


-- Se desea saber que  mascotas se encuentran en proceso de 
-- adoptcion o si pueden ser adoptadas seleccionando su nombre, edad,
-- tipo de mascota, nombre del refugio y direccion asi como el estatus de la mascota.
select m.nombre nombre_mascota, trunc((sysdate - m.fecha_nacimiento)/365) edad, 
	t.nombre_tipo, c.nombre nombre_refugio, c.direccion, em.descripcion
from mascota m, tipo_mascota t, refugio f, centro_operativo c, estatus_mascota em
where m.tipo_mascota_id = t.tipo_mascota_id
and m.estatus_mascota_id  = em.estatus_mascota_id
and m.centro_operativo_id = r.centro_operativo_id
and r.centro_operativo_id = c.centro_operativo_id;


-- Se desea saber la fecha y el monto de la donacion más grande realizada y compararla con el promedio
-- de la tabla externa
select fecha_donativo, monto_donativo, avg(monto_donativo) 
from donativo_ext
where monto_donativo = (
	select max(monto_donativo)
	from donativo_ext
)
group by fecha_donativo, monto_donativo;
