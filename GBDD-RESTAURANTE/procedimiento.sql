create or replace function totalclientes(varchar, int)
returns  text
as $$
	declare 
	 nombremesero alias for $1;  año alias for $2;   totalcliente int;
begin
	SELECT 
	  count(cliente.nombre_cliente) into totalcliente
	FROM restaurante
		inner join mesero on  restaurante.id_restaurante = mesero.id_restaurante 
		inner join factura on factura.id_restaurante = restaurante.id_restaurante
		inner join cliente on factura.id_cliente = cliente.id_cliente
	WHERE
		extract(year from factura.fecha_factura) = año and mesero.nombre_mesero= nombremesero
	GROUP BY 
	  mesero.nombre_mesero, extract (year from factura.fecha_factura);
  
	return totalcliente;
end;
$$
Language plpgsql;

SELECT totalclientes('Angelica', 2021)