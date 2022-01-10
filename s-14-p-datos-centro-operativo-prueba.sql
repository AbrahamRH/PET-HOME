--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2022-04-01
--@Descripción:     Script de prueba para el procedimiento datos-centro-operativo.sql

set serveroutput on

declare
  c_valor_esperado varchar2(400);
  v_cadena_salida varchar2(5000);
begin 

  c_valor_esperado := '  1 PETPC PET-HOME La loma Calle 1 #128, Colonia X Estado Y CLINICA 2221458780  OFICINA RRXXGGHHH!!! Juan 2 PETOA Oficina PET-HOME Plaza X Av. 23 #1024, Colonia Z, Estado Y OFICINA AAXXGGHHH!!! Pedro 3 PETCP Clinica PET-HOME Circuito Interior Pino Suarez #23, Colonia A Estado Y CLINICA 5567879032 4 PETRC Refugio PET-HOME El Valle Calle 43 #256, Colonia X Estado Y REFUGIO 200 4';


  sp_co_obtener_datos(1, v_cadena_salida);

  if (length(v_cadena_salida) = length(c_valor_esperado)) then 
    dbms_output.put_line('OK, la cadena conincide con la del dato de prueba');

  else
    raise_application_error(-20099,'FALLO! las cadenas no coinciden:'
    
    || length(v_cadena_salida) || ' SALIDA'

    || length(c_valor_esperado) || ' CADENA PRUEBA'
    
    );
  end if; 

end;
/
show errors

