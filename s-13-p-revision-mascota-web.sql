--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2022-07-01
--@Descripción:     Script que realiza las insersiones correspondientes para registrar
--                  una nueva revisión para una mascota en refugio, para poder utilizarse en web.

connect rj_proy_admin/rj_admin;

create or replace procedure sp_nueva_revision_mascota_web
( p_mascota_id in number, p_veterinario_id in number , 
  p_diagnostico in varchar2, p_foto_mascota in blob, salida out number) is

begin

  insert into revision_mascota(
    revision_mascota_id,
    fecha_revision,
    diagnostico,
    empleado_id,
    mascota_id,
    foto_mascota
  )
  values(
    revision_mascota_seq.nextval,
    sysdate,
    p_diagnostico,
    p_veterinario_id,
    p_mascota_id,
    p_foto_mascota
  );

  commit; 
  salida := 1;

  exception 
  when others then
    salida := 0;

end;
/
show errors
