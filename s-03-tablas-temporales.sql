--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-27
--@Descripción:     (s-03-tablas-temporales) - Creación de tablas temporales

-- CENTROS_OPERATIVOS
create global temporary table centros_operativos on commit preserve rows as 
(
	select * 
	from centro_operativo
	natural join refugio
	natural join clinica
	natural join oficina
);


-- NOMINA_EMPLEADOS
create private temporary table ora$ptt_nomina_empleados 
(
	nomina_id number(10,0) not null,
	empleado_id number(10,0) not null,
	nombre varchar(40) not null,
	apellido_paterno varchar(40) not null,
	apellido_materno varchar(40) not null,
	sueldo_mensual number(8,2)
)on commit preserve definition;

-- DONADORES
create private temporary table ora$ptt_donadores on commit preserve rows as 
(
	select c.cliente_id, c.nombre, c.apellido_paterno, d.fecha_donativo, d.monto_donativo
	from cliente c, donativo d
	where c.cliente_id = d.cliente_id
);
