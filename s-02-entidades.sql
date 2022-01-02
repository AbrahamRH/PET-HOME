--@autor:           Abraham Ramírez Hernández, Hugo Juárez Pérez
--@Fecha creación:  2021-12-21
--@Descripción:     (s-02-entidades) - Script empleado para la creación
--                  de las tablas del caso de estudio

-- CENTRO_OPERATIVO
create table centro_operativo
(
	centro_operativo_id 	number(10,0)  not null,
	direccion 	        	varchar2(100) not null,
	nombre 		          	varchar2(40)  not null,
	latitud 		      		number(4,1)   not null,
	longitud 		      		number(4,1)   not null,
	codigo varchar2(5) generated always
		as ('PET' || upper(substrb(nombre,1,1)) || upper(substrb(direccion,1,1))) virtual,
	es_refugio 		     		number(1,0)   not null,
	es_clinica 		    		number(1,0)   not null,
	es_oficina 	    			number(1,0)   not null,
	constraint centro_operativo_pk primary key(centro_operativo_id),
	constraint centro_operativo_uk unique(codigo),
	constraint centro_operativo_rol_chk check((es_refugio = 0 or es_refugio = 1)
	and (es_oficina = 1 or es_oficina =  0) and (es_clinica = 0 or es_clinica = 1)),
	constraint centro_operativo_clinica_refugio_chk check(
		(es_oficina = 0 and (es_clinica = 1 or es_refugio = 1)) or
		(es_oficina = 1 and (es_clinica = 0 or es_refugio = 0)))
);

-- EMPLEADO
create table empleado 
(
	empleado_id 	   		number(10,0) not null,
	nombre 			    		varchar2(40) not null,
	apellido_paterno  	varchar2(40) not null,
	apellido_materno  	varchar2(40) not null,
	curp 			    			varchar2(18) not null,
	fecha_ingreso 	  	date 		 not null,
	email 		      		varchar2(40) not null,
	sueldo 			    		number(8,2)  not null,
	es_gerente 		    	number(1,0)  not null,
	es_administrativo   number(1,0)  not null,
	es_veterinario 	  	number(1,0)  not null,
	centro_operativo_id number(10,0) not null,
	constraint empleado_pk primary key(empleado_id),
	constraint empleado_curp_uk unique(curp),
	constraint centro_operativo_empleado_rol_chk check(
		(es_administrativo = 0 or es_administrativo = 1) and (es_gerente = 1 
		or es_gerente = 0) and (es_veterinario  = 0 or es_veterinario = 1)
	)
);


-- GRADO ACADEMICO
create table grado_academico
(
	grado_academico_id		number(10,0) not null,
	titulo					varchar2(40) not null,
	fecha_titulacion		date 		 not null,
	cedula_profesional		varchar2(20) not null,
	empleado_id				number(10,0) not null,

	constraint grado_academico_pk primary key(grado_academico_id),
	constraint grado_academico_cedula_profecional_uk unique (cedula_profesional),
	constraint empleado_id_fk foreign key(empleado_id)
		references empleado(empleado_id)
);



-- REFUGIO
create table refugio
(
	centro_operativo_id number(10,0) not null,
	numero_de_registro  varchar2(8)  not null,
	logo 								blob 		 not null,
	lema  							varchar2(40) not null,
	refugio_alterno_id  number(10,0) not null,
	constraint refugio_pk primary key(centro_operativo_id),
	constraint refugio_registro_uk unique(numero_de_registro),
	constraint centro_operativo_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id),
	constraint refugio_refugio_alterno_id_fk foreign key(refugio_alterno_id)
		references refugio(centro_operativo_id)
);

-- DIRECCION_WEB
create table direccion_web(
	direccion_web_id 		number(10,0) not null,
	dominio_url 				varchar2(40) not null,
	centro_operativo_id number(10,0) not null,
	constraint direccion_web_pk primary key(direccion_web_id),
	constraint direccion_web_centro_operativo_id_fk foreign key(centro_operativo_id)
		references refugio(centro_operativo_id)
);

-- OFICINA
create table oficina(
	centro_operativo_id number(10,0) not null,
	persona_moral_rfc   varchar2(12) not null,
	firma_electronica 	blob 		 not null,
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
	hora_inicio 				date 		 not null,
	hora_fin 						date 		 not null,
	telefono_atencion   varchar2(10) not null,
	telefono_emergencia varchar2(10) not null,
	constraint clinica_pk primary key(centro_operativo_id),
	constraint clinica_centro_operativo_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id)
);

-- ESTATUS_MASCOTA
create table estatus_mascota(
	estatus_mascota_id number(10,0) constraint estatus_mascota_pk primary key,
	descripcion 			 varchar2(40) not null
);

-- TIPO_MASCOTA
create table tipo_mascota(
	tipo_mascota_id  number(10,0) not null,
	nombre_tipo   	 varchar2(40) not null,
	nivel_cuidado 	 number(1,0)  not null,
	constraint tipo_mascota_pk primary key(tipo_mascota_id),
	constraint tipo_mascota_nivel_cuidado_chk check(
		nivel_cuidado >= 1 and nivel_cuidado <= 5
	)
);

-- ORIGEN 
create table origen(
	origen_id   number(10,0) constraint origen_pk primary key,
	descripcion varchar2(40) not null
);

-- CLIENTE
create table cliente(
	cliente_id 	number(10,0) not null,
	nombre 			varchar2(40) not null,
	ap_paterno  varchar2(40) not null,
	ap_materno  varchar2(40) not null,
	direccion   varchar2(40) not null,
	ocupacion   varchar2(40) not null,
	usuario     varchar2(50) generated always 
		as (nombre || '_' || substr(ap_paterno,1,1) || '_' || substr(ap_materno,1,1) ) virtual,
	password    varchar2(40) not null,
	constraint cliente_pk primary key(cliente_id),
	constraint cliente_usuario_uk unique(usuario)
);

-- MASCOTA
create table mascota(
	mascota_id 		      	number(10,0) 		not null,
	nombre  	 		    		varchar2(40) 		not null,
	folio 				   		  varchar2(8)  		not null,
	fecha_ingreso      	  	date  default sysdate 	not null,
	fecha_estatus      	  	date 			    not null,
	fecha_nacimiento   	  	date 			    not null,
	causa_muerte 		   		varchar2(40) 	 	null, --esto deberia ser null
	estatus_mascota_id  	number(10,0) 		not null,
	tipo_mascota_id 	  	number(10,0) 		not null,
	centro_operativo_id 	number(10,0) 		not null,
	origen_id 						number(10,0) 		not null,
	cliente_id 						number(10,0) 			null,
	donador_id 			  		number(10,0) 			null,
	mascota_padre_id  	  number(10,0) 			null,
	mascota_madre_id      number(10,0) 			null,
	centro_nacimiento_id  number(10,0) 			null,
	constraint mascota_pk primary key(mascota_id),
	constraint mascota_folio_uk unique(folio),
	constraint mascota_estatus_id_fk foreign key(estatus_mascota_id)
		references estatus_mascota(estatus_mascota_id),
	constraint mascota_tipo_mascota_id_fk foreign key(tipo_mascota_id) 
		references tipo_mascota(tipo_mascota_id),
	constraint mascota_centro_operativo_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id),
	constraint mascota_cliente_id_fk foreign key(cliente_id)
		references cliente(cliente_id),
	constraint mascota_donador_id_fk foreign key(donador_id)
		references cliente(cliente_id),
	constraint mascota_mascota_padre_id_fk foreign key(mascota_padre_id)
		references mascota(mascota_id),
	constraint mascota_mascota_madre_id_fk foreign key(mascota_madre_id)
		references mascota(mascota_id),
	constraint mascota_centro_nacimiento_id_fk foreign key(centro_nacimiento_id)
		references centro_operativo(centro_operativo_id),
	constraint mascota_origen_id_fk foreign key (origen_id)
		references origen(origen_id)
);

-- HISTORICO_ESTATUS_MASCOTA
create table historico_status_mascota(
	historico_status_mascota_id number(10,0) not null,
	fecha_estatus 				 			date 		 not null,
	estatus_mascota_id          number(10,0) not null,
	mascota_id 									number(10,0) not null,
	constraint historico_status_mascota_pk 
	primary key(historico_status_mascota_id),
	constraint historico_status_mascota_id_fk foreign key(estatus_mascota_id)
		references estatus_mascota(estatus_mascota_id),
	constraint historico_mascota_id_fk foreign key(mascota_id)
		references mascota(mascota_id)
);
-- ADOPCION
create table adopcion(
	adopcion_id 	  			number(10,0)  not null,
	fecha_adopcion  			date 		  not null,
	es_ganador          	number(1,0)   not null,
	descripcion_rechazo 	varchar2(200) null,
	cliente_id 						number(10,0)  not null,
	mascota_id 						number(10,0)  not null,
	constraint adopcion_pk primary key(adopcion_id),
	constraint adopcion_cliente_id_fk foreign key(cliente_id)
		references cliente(cliente_id),
	constraint adopcion_mascota_id_fk foreign key(mascota_id)
		references mascota(mascota_id),
		constraint adopcion_es_ganador_chk check( 
			es_ganador = 0 or es_ganador = 1
		)
);

-- DONATIVO
create table donativo(
	donativo_id     number(10,0) 		  	not null,
	fecha_donativo  date  default sysdate 	not null,
	monto_donativo  number(10,2) 			not null,
	cliente_id      number(10,0) 			not null,
	constraint donativo_pk primary key(donativo_id),
	constraint donativo_cliente_id_fk foreign key(donativo_id)
		references donativo(donativo_id)
);

-- REVISION_ADOPCION
create table revision_adopcion(
	mascota_id 	 	 		number(10,0)  								not null,
	num_revision   		number(10,0) generated always as identity,
	fecha_revision 		date  default  sysdate 						not null,
	calificacion   		number(2,0)   								not null,
	costo_revision 		number(10,2)  								not null,
	observaciones  		varchar2(200) 								not null,
	cliente_id  	 		number(10,0)  								not null,
	centro_operativo_id number(10,0) 								not null,
	constraint revision_adopcion_pk primary key(mascota_id, num_revision),
	constraint revision_adopcion_calificacion_chk check(
		calificacion >= 1 and calificacion <= 10
	),
	constraint revision_adopcion_cliente_id_fk foreign key(cliente_id)
		references cliente(cliente_id),
	constraint revision_adopcion_centro_id_fk foreign key(centro_operativo_id)
		references centro_operativo(centro_operativo_id)
);

-- REVISION_MASCOTA
create table revision_mascota(
	revision_mascota_id 	number(10,0)  				not null,
	fecha_revision 				date default sysdate 	not null,
	diagnostico  					varchar2(200) 				not null,
	foto_mascota  		  	blob default empty_blob() 	not null,
	empleado_id 					number(10,0)  				not null,
	mascota_id 						number(10,0)  				not null,
	constraint revision_mascota_pk primary key(revision_mascota_id),
	constraint revision_mascota_empleado_id_fk foreign key(empleado_id)
		references empleado(empleado_id),
	constraint revision_mascota_mascota_id_fk foreign key(mascota_id)
		references mascota(mascota_id)
);
