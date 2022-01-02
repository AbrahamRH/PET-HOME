--@Autor: Juárez Pérez Hugo
--@Fecha creación: 2022-01-01
--@Descripción: Trigger que hace una ventana de 15 dias en la que los clientes pueden 
--              solicitar la adopción de una mascota de acuerdo a partir del primer cliente
--              que solicitó la adopción 

create or replace trigger tr_espera_15_dias
before insert on adopcion
for each row
declare
  v_count number(1,0);
  v_mascota_id adopcion.mascota_id%type;
  v_fecha_solicitud adopcion.fecha_adopcion%type;



begin
  select min(fecha_adopcion) into v_fecha_solicitud
  from adopcion
  where mascota_id = :new.mascota_id;

  if :new.fecha_adopcion > v_fecha_solicitud + 15 then
    raise_application_error(-20101, 'El periodo de 15 dias para
    la adopción de esta mascota ha terminado!');
  end if;

end;
/
show errors