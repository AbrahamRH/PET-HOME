--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-27
--@Descripción:     (s-03-tablas-temporales) - Creación de tablas temporales

-- CENTROS_OPERATIVOS
create global temporary table centros_operativos on commit preserve rows as 
(
	select co.*, r.capacidad_maxima, r.lema, r.numero_de_registro, c.hora_fin, 
	c.hora_inicio, c.telefono_atencion, c.telefono_emergencia, o.responsable_nombre, 
	o.responsable_ap_pat, o.persona_moral_rfc
		from centro_operativo co, refugio r, clinica c, oficina o
		where co.centro_operativo_id = r.centro_operativo_id (+)
		and co.centro_operativo_id = r.centro_operativo_id (+)
		and co.centro_operativo_id = c.centro_operativo_id (+)
		and co.centro_operativo_id = o.centro_operativo_id (+)

);

-- NOMINA_EMPLEADOS
create private temporary table ora$ptt_nomina_empleados 
(
	nomina_id number(10,0),
	empleado_id number(10,0),
	nombre varchar(40),
	apellido_paterno varchar(40),
	apellido_materno varchar(40),
	sueldo_mensual number(8,2)
)on commit preserve definition;

-- DONADORES
create private temporary table ora$ptt_donadores on commit preserve definition as 
(
	select c.cliente_id, c.nombre, c.ap_paterno, d.fecha_donativo, d.monto_donativo
	from cliente c, donativo d
	where c.cliente_id = d.cliente_id
);
