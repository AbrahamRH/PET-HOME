--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2021-12-29
--@Descripción:     (s-15-f1-insertar-foto) 
-- 									Lectura de una foto de la mascota para ser insertada en la tabla de
--                  la tabla revision

-- Lectura de una foto del disco para ingresarlo en una tabla
-- @param p_nombre_foto nombre del archivo a insertar
-- @param p_nombre_tabla nombre de la tabla a insertar la foto
-- @param p_nombre_columna nombre de la columna donde se encuentra la foto
-- @param p_indice Índice del registro en donde se insertará la imagen
create or replace function f1_insertar_foto(
	p_nombre_foto 		varchar2,
	p_nombre_tabla    varchar2,
	p_nombre_columna  varchar2,
	p_indice  				number
) return number is
	v_bfile bfile;
	v_blob  blob;
	v_archivo varchar2(40);
	v_nombre_indice varchar2(40);
	v_src_offset number;
	v_dest_offset number;
	v_src_length number;
	v_dest_length number;
	v_consulta varchar2(100);
begin

	v_bfile := bfilename('TMP_DIR',p_nombre_foto);
	if ( dbms_lob.fileexists(v_bfile) = 0 ) then
		raise_application_error(-20001, 'El archivo ' || p_nombre_foto || ' no existe.');
	elsif ( dbms_lob.isopen(v_bfile) = 1 ) then
		raise_application_error(-20002, 'El archivo ' || p_nombre_foto 
			|| ' esta abierto y no es posible usarlo.');
	end if;

	dbms_lob.open(v_bfile,dbms_lob.lob_readonly);

	v_nombre_indice := p_nombre_tabla || '_id';
	v_consulta := 'select ' || p_nombre_columna 
		|| ' from ' || p_nombre_tabla
		|| ' where ' || v_nombre_indice || ' = ' || p_indice;
	execute immediate v_consulta into v_blob;
	
	v_src_offset := 1;
	v_dest_offset := 1;

	dbms_lob.loadblobfromfile (
		dest_lob    => v_blob,
		src_bfile   => v_bfile,
		amount      => dbms_lob.getlength(v_bfile),
		dest_offset => v_dest_offset,
		src_offset  => v_src_offset
	);

	v_src_length := dbms_lob.getlength(v_bfile);
	v_dest_length := dbms_lob.getlength(v_blob);

	if v_src_length <> v_dest_length then
		raise_application_error(-20003, 'Ocurrió un error al cargar el archivo');
	end if;

	dbms_lob.close(v_bfile);

	commit;
	return 1;
end;
/
show errors

