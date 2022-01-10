--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-30
--@Descripción:     Script que añade los padres a una mascota nacida en
--                  en el refugio.

create or replace procedure sp_asignar_padres_mascota
(p_padre_id in number, p_madre_id in number, p_hijo_id in number, 
 p_centro_nacimiento_id in number) is 

begin

  insert into mascota (mascota_madre_id, mascota_padre_id, centro_nacimiento_id) 
  values( p_madre_id, p_padre_id, p_centro_nacimiento_id );

end;
/
show errors



