--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2022-07-01
--@Descripción:     Script de prueba para el procedimiento web de inserscion mascota

set serveroutput on
declare
  v_blob blob;
  v_salida number;
begin

  v_blob := empty_blob();

  --dbms_lob.write( v_blob , 64, 1, utl_raw.cast_to_raw(dbms_random.string('x', 2000)) );
  
  sp_nueva_revision_mascota_web(3, 2, 'TODO BIEN', v_blob, v_salida );

  if v_salida = 0 then 
    raise_application_error(-200101, 'Prueba FALLIDA! el registro no se insertó correctamente');
  else  
    dbms_output.put_line('Prueba OK. Se insertó correctamente');
  end if;


end;
/