--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2022-01-01
--@Descripción:     (s-11-tr-maximo-adopciones) - Trigger para insertar en el historico de estatus mascota
create or replace trigger tr_historico_estatus_mascota
after 
  insert or
  update of estatus_mascota_id
  on mascota

for each row 
declare 
  v_mascota_id mascota.mascota_id%type;
  v_estatus_id mascota.estatus_mascota_id%type;
begin 
  v_mascota_id := :new.mascota_id;
  v_estatus_id := :new.estatus_mascota_id;

  insert into historico_status_mascota(historico_status_mascota_id, fecha_estatus, estatus_mascota_id, mascota_id)
  values(historico_estatus_mascota_seq.nextval,sysdate,v_estatus_id,v_mascota_id);

end;
/
show errors