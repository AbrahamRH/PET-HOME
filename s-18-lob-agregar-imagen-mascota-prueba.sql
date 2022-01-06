--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-31
--@Descripción:     Script prueba que los objetos BLOBs tengan contenido

set serveroutput on;

declare
  v_tamaño_foto
begin 


  agregar_imagen_mascota(7,10);

  select dbms_length(foto_mascota) as tamaño_foto 
  into v_tamaño_foto
  from revision_mascota
  where revision_mascota_id = 1;

  if (v_tamaño_foto > 0) THEN
    dbms_output.putline('OK, blob no vacío');
  else  
    dbms_output.putline('Prueba fallida! BLOB esta vacio!!!');
  end if;
end;
/

