--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2022-04-01
--@Descripción:     Script de prueba que realiza las insersiones correspondientes para registrar
--                  una nueva revisión para una mascota en refugio.
connect sys/system as sysdba
!cp -r ./fotos/ /tmp/
!chmod 777 /tmp/fotos
create or replace directory tmp_dir as '/tmp/fotos';
grant read, write on directory tmp_dir to rj_proy_admin;

connect rj_proy_admin/ rj_admin;
set serveroutput on
declare
  c_filename varchar2(7) := 'ket.jpg';
  v_blob blob;
  v_revision_id number;

begin

  sp_revision_mascota_ref(1,5,'En buena condición', c_filename, v_revision_id);

  select foto_mascota into v_blob
  from revision_mascota
  where revision_mascota_id = v_revision_id;
  

  if dbms_lob.getlength(v_blob) > 0 then 
    dbms_output.put_line('OK! Foto existente insertada correctamente');

  else
    raise_application_error(-200101, 'ERROR campo de foto_mascota vacio');
  end if;

  


end;
/