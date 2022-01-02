--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-23
--@Descripción:     Script para realizar una prueba de los scripts principales


whenever sqlerror exit rollback

prompt Creando usuarios
@s-01-usuarios.sql

prompt accediendo al usuario administrador
connect rj_proy_admin/rj_admin

prompt Creando objetos
@s-02-entidades.sql

prompt Creando tablas temporales
@s-03-tablas-temporales.sql

prompt Creando tablas externas
@s-04-tablas-externas.sql

prompt Creando secuencias
@s-05-secuencias.sql

prompt Creando índices
@s-06-indices.sql

prompt Creando sinónimos
@s-07-sinonimos.sql

prompt Creando vistas
@s-08-vistas.sql

prompt Poblando tablas
@s-09-carga-inicial.sql

prompt Realizando las consultas
--@s-10-consultas.sql

prompt Listo!

