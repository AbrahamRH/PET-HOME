--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2021-12-28
--@Descripción:     Script para realizar la carga inicial todas las tablas de la base de datos.ABORT

--TODO:
--Llenar con datos de mockaroo xd

create sequence adopcion_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence centro_operativo_seq
  start with 5
  increment by 1
  nominvalue
  maxvalue 10    --NO queremos mas de 10 C.O por ahora
  cache 20
  noorder
;

create sequence cliente_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence direccion_web_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence donativo_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence empleado_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence estatus_mascota_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence grado_academico_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence historico_estatus_mascota
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence mascota_seq
  start with 101
  increment by 1 
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence revision_adopcion_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

create sequence revision_mascota_seq
  start with 101
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;






