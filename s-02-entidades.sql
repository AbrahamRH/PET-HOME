--@autor:           Abraham Ramírez Hernández, Hugo Juárez Pérez
--@Fecha creación:  2021-12-21
--@Descripción:     (s-02-entidades) - Script empleado para la creación
--                  de las tablas del caso de estudio

/*
	TODO: 
		- Creación de las tablas restantes
			tablas actuales: centro_operativo, empleado, grado_academico, refugio
				oficina, clinica, direccion_web,
		- Uso de default
		- Uso de columnas virtuales
*/

-- CENTRO_OPERATIVO
create table centro_operativo
(
	centro_operativo_id number(10,0)  not null,
	direccion 	        varchar2(100) not null,
	nombre 		          varchar2(40)  not null,
	latitud 		      	numeric(4,1)  not null,
	longitud 		      	numeric(4,1)  not null,
	codigo 				      varchar2(5)   not null,
	es_refugio 		     	number(1,0)   not null,
	es_clinica 		    	number(1,0)   not null,
	es_oficina 	    		number(1,0)   not null,
	gerente_id 	    		number(10,0)  not null,

	constraint centro_operativo_pk primary key(centro_operativo_id),
	constraint centro_operativo_uk unique(codigo),
	constraint centro_operativo_rol_chk check(es_refugio between (0,1)
		  and es_oficina between (1,0) and es_clinica between (0,1)),
	constraint centro_operativo_clinica_refugio_chk check(
		(es_oficina = 0 and (es_clinica = 1 or es_refugio = 1)) or
		(es_oficina = 1 and (es_clinina = 0 or es_refugio = 0))),
	constraint centro_operativo_gerente_id_fk foreign key(gerente_id)
		references empleado(empleado_id)
);

-- EMPLEADO
create table empleado 
(
	empleado_id 	    	number(10,0) not null,
	nombre 			      	varchar2(40) not null,
	apellido_paterno  	varchar2(40) not null,
	apellido_materno  	varchar2(40) not null,
	curp 			        	varchar2(18) not null,
	fecha_ingreso 	  	date 		     not null,
	email 		      		varchar2(40) not null,
	sueldo 			      	number(8,2)  not null,
	es_gerente 		    	number(1,0)  not null,
	es_administrativo   number(1,0)  not null,
	es_veterinario 	  	number(1,0)  not null,
	grado_academico_id  number(10,0) not null,

	constraint empleado_pk primary key(empleado_id),
	constraint empleado_curp_uk unique(curp),
	constraint empleado_grado_academico_id_fk foreign key(grado_academico_id)
		references grado_academico(grado_academico_id)
	constraint centro_operativo_rol_ chk check(es_administrativo between (0,1)
		and es_gerente between (1,0) and es_veterinario between (0,1))
);

-- GRADO_ACADEMICO
create table grado_academico(
	grado_academico_id  number(10,0) not null,
	titulo 			        varchar2(40) not null,
	fecha_titulacion    date  		   not null,
	cedula_profesional  varchar2(20) not null,
	empleado_id 	      number(10,0) not null,
	constraint grado_academico_pk primary key(grado_academico_id),
	constraint grado_academico_cedula_profesional_uk unique(cedula_profesional)
	constraint grado_academico_empleado_id_fk foreign key(empleado_id)
		references empleado(empleado_id)
);

-- REFUGIO
create table refugio
(
	centro_operativo_id number(10,0) not null,
	numero_de_registro  varchar2(8)  not null,
	logo 								blob 				 not null,
	lema  							varchar2(40) not null,
	direccion_web_id 		number(10,0) not null,
	refugio_alterno_id  number(10,0) not null,
	constraint refugio_pk primary key(centro_operativo_id).
	constraint refugio_registro_uk unique(numero_de_registro),
	constraint centro_operativo_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id),
	constraint refugio_direccion_web_id_fk foreign key(direccion_web_id)
		references direccion_web(direccion_web_id),
	constraint refugio_refugio_alterno_id_fk foreign key(refugio_alterno_id)
		references refugio(centro_operativo_id)
);

-- OFICINA
create table oficina(
	centro_operativo_id number(10,0) not null,
	persona_moral_rfc   varchar2(12) not null,
	firma_electronica 	blob 				 not null,
	responsable_nombre  varchar2(40) not null,
	responsable_ap_pat 	varchar2(40) not null,
	responsable_ap_mat  varchar2(40) not null,
	constraint oficina_pk primary key(centro_operativo_id),
	constraint oficina_rfc_uk unique(persona_moral_rfc),
	constraint oficina_centro_operativo_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id)
);

-- CLINICA
create table clinica(
	centro_operativo_id number(10,0) not null,
	hora_inicio 				date 				 not null,
	hora_fin 						date 				 not null,
	telefono_atencion   varchar2(10) not null,
	telefono_emergencia varchar2(10) not null,
	constraint clinica_pk primary key(centro_operativo_id)
	constraint clinica_centro_operativo_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id)
);

-- DIRECCION_WEB
create table direccion_web(
	direccion_web_id number(10,0) not null,
	dominio_url 		 varchar(40)  not null,
	constraint direccion_web_pk primary key(direccion_web_id)
);

