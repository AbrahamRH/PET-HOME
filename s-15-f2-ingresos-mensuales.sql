--@autor:           Abraham Ramírez Hernández
--@Fecha creación:  2021-12-30
--@Descripción:     (s-15-f2-ingresos-mensuales) - Funcion para la obtención 
-- 									de los ingresos mensuales de las donaciones (tabla donaciones y donaciones_ext)

set serveroutput on
create or replace function get_ingresos_por_periodo(
	p_fecha_inicio varchar2,
	p_fecha_fin varchar2
) return number is
	v_monto_donativo number;
	v_monto_donativo_ext number not null := 0;
	v_ingresos_periodo number not null := 0;
begin
	select nvl(sum(monto_donativo), 0)
	into v_monto_donativo
	from donativo
	where fecha_donativo >= to_date(p_fecha_inicio,'dd/mm/yyyy')
	and fecha_donativo <= to_date(p_fecha_fin, 'dd/mm/yyyy');

	select nvl(sum(monto_donativo), 0)
	into v_monto_donativo_ext
	from donativo_ext
	where fecha_donativo >= to_date(p_fecha_inicio,'dd/mm/yyyy')
	and fecha_donativo <= to_date(p_fecha_fin, 'dd/mm/yyyy');


	v_ingresos_periodo := v_monto_donativo + v_monto_donativo_ext;

	return v_ingresos_periodo;
end;
/
show errors
