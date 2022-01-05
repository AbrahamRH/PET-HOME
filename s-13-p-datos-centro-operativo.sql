--@autor:           Juárez Pérez Hugo
--@Fecha creación:  2022-04-01
--@Descripción:     Script que realiza las insersiones correspondientes para obtener 
--                  todos los datos relacionados a cada centro operativo, de acuerdo con su tipo

set serveroutput on

create or replace procedure p_co_obtener_datos
(p_co_id in number, p_cadena_salida out varchar ) is

  cursor cur_centro_operativo is
    select co.centro_operativo_id, co.codigo, co.nombre, co.direccion, co.es_refugio, co.es_clinica, co.es_oficina, 
      r.capacidad_maxima, r.refugio_alterno_id, 
      c.hora_fin, c.hora_inicio, c.telefono_atencion,
      o.persona_moral_rfc, o.responsable_nombre, o.responsable_ap_pat
    from centro_operativo co, refugio r, clinica c, oficina o 
    where  co.centro_operativo_id  =  r.centro_operativo_id (+)
    and  co.centro_operativo_id =  c.centro_operativo_id (+)
    and co.centro_operativo_id = o.centro_operativo_id (+);

    
  v_cadena_salida varchar(200);


begin
  for centro in cur_centro_operativo loop
    
    v_cadena_salida := centro.centro_operativo_id || ' ' || 
                      centro.codigo || ' ' || 
                      centro.nombre || ' ' || 
                      centro.direccion;
  
    if (centro.es_clinica = 1) then
      v_cadena_salida := v_cadena_salida || ' CLINICA ' ||
      centro.telefono_atencion || ' ' ;
  
    end if;

    if (centro.es_refugio = 1) then
      v_cadena_salida := v_cadena_salida || ' REFUGIO ' ||
      centro.capacidad_maxima || ' ' ||
      centro.refugio_alterno_id;

    end if;

    if (centro.es_oficina = 1) then
      v_cadena_salida := v_cadena_salida || ' OFICINA ' ||
      centro.persona_moral_rfc || ' ' ||
      centro.responsable_nombre;
    end if;


    

    p_cadena_salida := p_cadena_salida || ' ' || v_cadena_salida;

  end loop;


end;
/
show errors
