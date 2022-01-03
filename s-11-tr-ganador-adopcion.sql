--@Autor: Juárez Pérez Hugo
--@Fecha creación: 2022-01-01
--@Descripción: Trigger actualiza el dueño de la mascota,
--              Al momento de que un cliente gane el proceso de adopción.

create or replace trigger tr_ganador_adopcion
for
  update of es_ganador
  on adopcion
compound trigger 

--seccion declarativa común

before each row is 
  --Utilizar un cursor para obtener todos aquellos clientes que perdieron el concurso para la mascota 
  --correspondiente

  --Marcar a cada uno de ellos con la misma descripción generica por ahora... 

  --Asignar el ID del cliente ganador a la mascota correspondiente
begin 
  update mascota
  set cliente_id = :new.cliente_id
  where mascota_id = :new.mascota_id;
end before each row;

after statement is
begin


  update adopcion
  set descripcion_rechazo = 'No cumples con el requirimiento de esta mascota'
  where es_ganador = 0;



end after statement;



end;
/
show errors