--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-31
--@Descripción:     Script que asigna una imagen al campo BLOB de mascota

prompt Configurar Directorio de imaganes
connect sys/system as sysdba
create or replace directory fotos_dir as '/tmp/ProyectoFinal/mascotas';
grant read, write on directory fotos_dir to rj_proy_admin;

prompt Procedimiento con usuario admin del proyecto
connect rj_proy_admin/rj_admin
set serveroutput on 

create or replace procedure agregar_imagen_mascota
(p_mascota_id in number, p_num_imagen in number) is 

v_bfile bfile;
v_src_offset number;
v_dest_offset number;
v_blob blob;
v_src_length number;
v_dest_length number;
v_nombre_archivo varchar2(50);

begin 
  for v_index in p_mascota_id..p_mascota_id+p_num_imagen loop
  v_nombre_archivo := 'pet-' || v_index || '.jpg';
  dbms_output.put_line('Cargando foto para' || v_nombre_archivo);

  --Corroborando que existan los archivos:
  v_bfile := bfilename('FOTOS_DIR', v_nombre_archivo);
  
  if dbms_lob.fileexists(v_bfile) = 0 THEN
    raise_application_error(-20001, 'El archivo' || v_nombre_archivo || 'no existe.');
  end if;

  --Abrir el archivo
  if dbms_lob.isopen(v_bfile) = 1 THEN
    raise_application_error(-20001, 'El archivo ' || v_nombre_archivo || 'está abierto. No se puede usar');
  end if;

  --abriendo archivo
  dbms_lob.open(v_bfile, dbms_lob.lob_readonly);


  --Actualizamos el blob en la tabla
  --Se asegura qeu la tabla contega datos y la columna foto debe tener un blob vacio
  --Asignar v_blolb

  select foto_mascota into v_blob
  from revision_mascota
  where revision_mascota_id = v_index
  for update;

  --Escribiendo bytes
  v_src_offset := 1;
  v_dest_offset := 1;

  dbms_lob.loadblobfromfile(
    dest_lob => v_blob,
    src_bfile => v_bfile,
    amount => dbms_lob.getlength(v_bfile),
    dest_offset => v_dest_offset,
    src_offset => v_src_offset
  );

  --Cerrando archivo
  dbms_lob.close(v_bfile);

  --Validando la carga 
  v_src_length := dbms_lob.getlength(v_bfile);
  v_dest_length := dbms_lob.getlength(v_blob);

  if v_dest_length<>v_src_length THEN
    raise_application_error(-20001, 'El archivo' || v_nombre_archivo || 'no se cargó correctamente');
  end if;
  end loop;  

  commit;

end;
/
show errors




