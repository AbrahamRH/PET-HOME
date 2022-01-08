--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-31
--@Descripción:     Script prueba que los objetos BLOBs tengan contenido

set serveroutput on;

declare
  v_tamaño_foto number;
  v_foto blob;
begin 

  agregar_imagen_mascota(8,10);

  select foto_mascota
  into v_foto
  from revision_mascota
  where revision_mascota_id = 1;

  v_tamaño_foto := dbms_lob.getlength(v_foto);
  if (v_tamaño_foto > 0) THEN
    dbms_output.put_line('OK, blob no vacío');
  else  
    dbms_output.put_line('Prueba fallida! BLOB esta vacio!!!');
  end if;
end;
/

