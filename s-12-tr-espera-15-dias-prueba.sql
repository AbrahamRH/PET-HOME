--@Autor: Juárez Pérez Hugo
--@Fecha creación: 2022-01-01
--@Descripción: Script de prueba para el trigger de espera de 15 dias al momento de realizar
--              una adopción
set serveroutput on

declare
  c_mascota_id number := 5;
begin

  insert into adopcion(adopcion_id, fecha_adopcion, es_ganador, cliente_id, mascota_id)
  values(adopcion_seq.nextval, sysdate, 0, 1, c_mascota_id);

  insert into adopcion(adopcion_id, fecha_adopcion, es_ganador, cliente_id, mascota_id)
  values(adopcion_seq.nextval, sysdate +7, 0, 2, c_mascota_id);

  insert into adopcion(adopcion_id, fecha_adopcion, es_ganador, cliente_id, mascota_id)
  values(adopcion_seq.nextval, sysdate +16, 0, 3, c_mascota_id);

exception
  when others then 
    dbms_output.put_line('Para la adopción con ID: ' || adopcion_seq.currval ||  ' Han pasado más de 15 dias entre las adopciones');
    dbms_output.put_line('OK! Prueba completada, adopción con ID: ' || adopcion_seq.currval || ' no debe ocurrir');

end;
/
show errors

select adopcion_id, fecha_adopcion, cliente_id, mascota_id from adopcion;


