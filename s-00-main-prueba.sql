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


prompt Listo!

