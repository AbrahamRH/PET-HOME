--@Autor: Juárez Pérez Hugo
--@Fecha creación: 2022-01-01
--@Descripción: Trigger actualiza el dueño de la mascota,
--              Al momento de que un cliente gane el proceso de adopción.

create or replace trigger tr_ganador_adopcion
before
  update of es_ganador
  on adopcion

for each row 
declare 
  --Utilizar un cursor para obtener todos aquellos clientes que perdieron el concurso para la mascota 
  --correspondiente

  --Marcar a cada uno de ellos con la misma descripción generica por ahora... 

  --Asignar el ID del cliente ganador a la mascota correspondiente

begin 
  

  update adopcion
  set descripcion_rechazo = 'No cumples con el requirimiento de esta mascota'
  where es_ganador = 0;

  update mascota
  set cliente_id = :new.cliente_id
  where mascota_id = :new.mascota_id;





end;
/
show errors