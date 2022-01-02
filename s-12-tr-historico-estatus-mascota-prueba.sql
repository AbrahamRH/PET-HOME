--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2022-01-01
--@Descripción:     (s-12-tr-maximo-adopciones) Script de prueba para
--                  Trigger del historico de estatus mascota
set serveroutput on

update mascota
set estatus_mascota_id = 5
where mascota_id = 1;


declare
  v_ultimo_historico_id number;
  v_id_en_tabla number;

  v_mascota_status number;



begin
  v_ultimo_historico_id := historico_estatus_mascota_seq.currval;

  select estatus_mascota_id into v_mascota_status 
  from mascota
  where mascota_id = 1;

  select estatus_mascota_id into v_id_en_tabla 
  from historico_status_mascota
  where mascota_id = 1
  and historico_status_mascota_id = v_ultimo_historico_id;


  if (v_mascota_status = v_id_en_tabla) then
    dbms_output.put_line('Último valor en historico coincide con el actual en mascota');
    dbms_output.put_line('Prueba OK');
  else
    raise_application_error(-20010, 'Prueba Fallida, valores  no coinciden.'
    || 'Valor en mascota: '

    || v_mascota_status

    || ' Valor en historico: '

    || v_id_en_tabla 
    
    );

  end if;

end;
/
show errors