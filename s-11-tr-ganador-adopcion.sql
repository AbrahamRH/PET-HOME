--@Autor: Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación: 2022-01-01
--@Descripción: Trigger actualiza el dueño de la mascota,
--              Al momento de que un cliente gane el proceso de adopción.

create or replace trigger tr_ganador_adopcion
for
  update of es_ganador or
  insert
  on adopcion
compound trigger 

before each row is 
begin
  if :new.es_ganador = 1 then
    update mascota
    set cliente_id = :new.cliente_id
    where mascota_id = :new.mascota_id;
  end if;
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