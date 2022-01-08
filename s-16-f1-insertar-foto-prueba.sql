--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2022-01-02
--@Descripción:     (s-16-f1-insertar-foto-prueba) - Prueba para la
-- 									función insertar_foto


Prompt  =====================================================
Prompt
Prompt  Prueba de la función del script s-15-f1-insertar-foto
Prompt
Prompt  =====================================================

!cp -r ./fotos/ /tmp/
!chmod 777 /tmp/fotos

connect sys/system as sysdba
create or replace directory tmp_dir as '/tmp/fotos';

grant read, write on directory tmp_dir to rj_proy_admin;;

connect rj_proy_admin/rj_admin;

insert into revision_mascota (revision_mascota_id, 
	diagnostico, empleado_id, mascota_id
) values (revision_mascota_seq.nextval, 'Mascota en buenas condiciones', 1,5);

set serveroutput on 
declare
	v_return_value number(1,0);
	v_foto bfile;
	v_foto_tabla blob;
	v_tabla_length number;
	v_foto_length number;
	v_indice number;
begin
	v_indice := revision_mascota_seq.currval;
	dbms_output.put_line('El indice es: ' ||v_indice);
	dbms_output.put_line('Llamando a la función f1_insertar_foto');
	v_return_value := f1_insertar_foto('Ajolote.jpg','REVISION_MASCOTA','FOTO_MASCOTA', v_indice);

	-- Extraemos la imagen de la tabla
	select foto_mascota into v_foto_tabla
	from revision_mascota
	where revision_mascota_id = v_indice;

	if v_return_value = 1 then
		dbms_output.put_line('OK, Imágen almacenada en la base de datos');
	else
		raise_application_error(-20005, 'La imagen no se actualizo');
	end if;
	commit;
end;
/


