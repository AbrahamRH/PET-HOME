--@Autor: Juárez Pérez Hugo
--@Fecha creación: 2022-01-01
--@Descripción: Script de prueba para el trigger de ganador de adopción


set serveroutput on
declare
  v_mascota_id number;
  v_count number;
  c_mascota_id number := 125;
begin


  update adopcion
  set es_ganador = 1
  where adopcion_id = c_mascota_id;

  select mascota_id into v_mascota_id
  from adopcion
  where adopcion_id = 125;

  select count(cliente_id) into v_count
  from adopcion
  where es_ganador = 1
  and mascota_id = v_mascota_id;

  if (v_count > 1) then
    dbms_output.put_line('Prueba Fallida!  Solo debe haber un ganador por mascota');

  else 
    dbms_output.put_line('OK! Prueba concluida, solo hubo un ganador para la mascota con ID: ' || v_mascota_id );


  end if;
end;
/
show errors