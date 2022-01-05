--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2022-04-01
--@Descripción:     Script que realiza las insersiones correspondientes para registrar
--                  una nueva revisión para una mascota en refugio.
connect sys/system as sysdba
create or replace directory tmp_dir as '/tmp/fotos';

grant read, write on directory tmp_dir to rol_admin;

connect rj_proy_admin/rj_admin;


create or replace procedure revision_mascota_ref 
(p_mascota_id in number, p_veterinario_id in number, p_diagnostico in varchar2(100)) is


  v_foto blob;
  v_index number;


begin





  insert into revision_mascota(revision_mascota_id, fecha_revision, diagnostico,empleado_id, mascota_id) 
  values(revision_mascota_seq.nextval, sysdate, p_diagnostico, p_veterinario_id, p_mascota_id );
  v_indice := revision_mascota_seq.currval;
  
  f1_insertar_foto('ket.jpg','REVISION_MASCOTA','FOTO_MASCOTA', v_indice);




end; 
/
show errors
