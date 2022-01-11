--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2021-12-31
--@Descripción:     Script de prueba para el funcionamiento del procedimiento
--                  del script 13. 
set serveroutput on

declare
  c_padre_id number := 1;
  c_madre_id number := 2;
  c_hijo_id number := 3;

  begin

  --Llamamos al procedimiento 
  sp_asignar_padres_mascota(c_padre_id, c_madre_id, c_hijo_id,3);
  
 ---commit al final de las operaciones, todo se ejecutó correctamente.
  dbms_output.put_line('OK, No hubo errores, se actualizaron datos de la mascota: '|| c_hijo_id || ' correctamente');
  commit;
 
  exception 
  when others then
  --algo salio mal, se aplica rollback
  dbms_output.put_line('Algo salio mal, haciendo rollback...');
  rollback;
 
end;
/



