--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-30
--@Descripción:     (s-15-f2-ingresos-mensuales) - Funcion para la obtención 
-- 									de los ingresos mensuales de las donaciones (tabla donaciones y donaciones_ext)

create or replace function get_ingresos_mensuales(
	mes in varchar2,
	ingreso_mensual out number
) return number is
	v_ingreso_donativo number(10,2);
	v_ingreso_donativo_ext number(10,2);
begin
	select sum(monto_donativo)
	into v_ingreso_donativo
	from donativo
	where fecha_donativo <=  sysdate
	and fecha_donativo >= sysdate - 30;

	select sum(monto_donativo)
	into v_ingreso_donativo_ext
	from donativo_ext
	where fecha_donativo <=  sysdate
	and fecha_donativo >= sysdate - 30;
	
	ingreso_mensual := v_ingreso_donativo + v_ingreso_donativo_ext;
end;
/
show errors
