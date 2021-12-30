--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-30
--@Descripción:     (s-12-tr-maximo-adopciones) Script de prueba para
--                  Trigger para avisar que se sobrepasaron
-- 					el máximo de adopciones por cliente

declare
  v_count_mascota number;
  c_clinete_prueba number := 1;
begin 

  insert into adopcion(c_clinete_prueba, fecha_adopcion, es_ganador, cliente_id, mascota_id) 
  values(adopcion_seq.nextval, sysdate, 1, 1, 1);
  insert into adopcion(c_clinete_prueba, fecha_adopcion, es_ganador, cliente_id, mascota_id) 
  values(adopcion_seq.nextval, sysdate, 1, 1, 2);
  insert into adopcion(c_clinete_prueba, fecha_adopcion, es_ganador, cliente_id, mascota_id) 
  values(adopcion_seq.nextval, sysdate, 1, 1, 3);
  insert into adopcion(c_clinete_prueba, fecha_adopcion, es_ganador, cliente_id, mascota_id) 
  values(adopcion_seq.nextval, sysdate, 1, 1, 4);
  insert into adopcion(c_clinete_prueba, fecha_adopcion, es_ganador, cliente_id, mascota_id) 
  values(adopcion_seq.nextval, sysdate, 1, 1, 5);

  insert into adopcion(c_clinete_prueba, fecha_adopcion, es_ganador, cliente_id, mascota_id) 
  values(adopcion_seq.nextval, sysdate, 1, 1, 1);

  select count(*) into v_count_mascota 
		from mascota 
	where cliente_id = 1;

  if (v_count_mascota > 5) THEN
    dbms_output.put_line('Prueba FALLIDA! Maximo numero de mascotas excedido.');
    dbms_output.put_line('Cliente #1 tiene' || v_count_mascota || ' mascotas, el maximo es 5');
  ELSE
    dbms_output.put_line('Numero de mascotas correcto: ' || v_count_mascota); 
  end if;

end;
/





