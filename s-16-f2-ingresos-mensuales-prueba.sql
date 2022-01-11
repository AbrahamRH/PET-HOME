--@autor:           Abraham Ramírez Hernández, Juárez Pérez Hugo
--@Fecha creación:  2022-01-03
--@Descripción:     (s-16-f2-ingresos-mensuales-prueba) - Prueba para la
--					la funcion de ingresos mensuales

prompt ==========================================================
prompt Prueba de la función del script s-16-f1-ingresos-mensuales
prompt ==========================================================

set serveroutput on 
declare
	v_ingresos_esperados number;
	v_ingresos number;
begin
	v_ingresos_esperados := 32230.68;
	v_ingresos := get_ingresos_por_periodo('10/10/2021','10/11/2021'); 

	if v_ingresos_esperados = v_ingresos then
		dbms_output.put_line('==  OK, los datos obtenidos son correctos ==');
	else
		raise_application_error(-20004,'==  ERROR, los datos fueron erroneos ==');
	end if;

end;
/
