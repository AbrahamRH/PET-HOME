--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-29
--@Descripción:     (s-11-tr-maximo-adopciones) - Trigger para avisar que se sobrepasaron
-- 									el máximo de adopciones por cliente

create or replace trigger tr_maximo_adopciones
	before insert on adopcion
	for each row
	declare
		v_count number(1,0);
		v_cliente_id cliente.cliente_id%type;
	begin
		select count(*) into v_count 
		from mascota 
		where cliente_id = :new.cliente_id;
		if v_count > 5 then
			raise_application_error(-21000, 'Se ha superado el número máximo de adopcion');
		end if;
	end;
	/
