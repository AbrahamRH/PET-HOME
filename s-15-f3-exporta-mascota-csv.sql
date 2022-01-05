--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2022-01-04
--@Descripción:     (s-15-f3-exporta-mascota-csv) - funcion para exportar la 
-- 									tabla mascota en un archivo csv existente

set serveroutput on
create or replace function exporta_mascota_csv(
	p_directorio varchar,
	p_archivo varchar
) return boolean is
	v_archivo utl_file.file_type;
	v_dato varchar(500);
	cursor cur_mascotas is 
		select m.mascota_id, m.nombre, m.fecha_ingreso,
			t.nombre_tipo, t.nivel_cuidado, e.descripcion as estatus,
			o.descripcion as origen
		from mascota m, tipo_mascota t, estatus_mascota e, origen o
		where m.tipo_mascota_id = t.tipo_mascota_id
		and m.estatus_mascota_id = e.estatus_mascota_id
		and o.origen_id = m.origen_id;
begin
	if utl_file.is_open(v_archivo) = false then
		v_archivo := utl_file.fopen(p_directorio,p_archivo,'w',32767);
	else
		raise_application_error(-20006,'ERROR: El archivo ' || p_archivo
		|| ' se encuentra abierto');
	end if;
--	for m in cur_mascotas loop
--		v_dato := m.mascota_id || ',' || m.nombre || ','
--			|| m.fecha_ingreso || ',' || m.nombre_tipo || ','
--			|| m.nivel_cuidado || ',' || m.estatus || ','
--			|| m.origen;
--		utl_file.put(v_archivo, v_dato);
--	end loop;
--	utl_file.fclose(v_archivo);
--	return true;
  return true;
	null;
end;
/
show errors
