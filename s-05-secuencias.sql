--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2021-12-28
--@Descripción:     (s-05-secuencias) - Script creado para la creacion de secuencias

create sequence empleado_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence mascota_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence grado_academico_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence centro_operativo_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence direccion_web_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence tipo_mascota_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence revision_mascota_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence revision_adopcion_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence estatus_mascota_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence historico_estatus_mascota_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence origen_web
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence adopcion_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;


create sequence cliente_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;

create sequence donativo_seq
	start with 100 
	increment by 1
	nomaxvalue 
	nominvalue
	nocycle
	cache 5;
