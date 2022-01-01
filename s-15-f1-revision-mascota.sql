--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-29
--@Descripción:     (s-15-f1-revision-mascota) 
-- 									Lectura de una foto de la mascota para ser insertada en la tabla de
--                  la tabla revision

create or replace funcion f1_revision_mascota(
	f_empleado_id in empleado.empleado_id%type;
	f_mascota_id in mascota.mascota_id%type;
	f_foto in revision_mascota.foto_mascota%type;
) return f_foto 
is  
begin 
	select foto_mascota 
	into f_foto
	from revision_mascota
	where empleado_id = f_empleado_id
	and mascota_id = f_mascota_id

end;
/
