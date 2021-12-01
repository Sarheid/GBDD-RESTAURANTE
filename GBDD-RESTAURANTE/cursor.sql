
do 
	$$
	DECLARE 
		datosdechef RECORD;
		cur_chef  cursor for 
		SELECT 
		  concat(chef.nombre_chef ||'  '|| chef.apellido_chef) as nombre_chef,
		  count (menu.nombre_menu) as total_menu, 
		  sum( detalle.cant_producto * detalle.precio_producto) as total
		FROM  factura
			inner join detalle on detalle.id_factura = factura.id_cliente 
			inner join restaurante on factura.id_restaurante = restaurante.id_restaurante
			inner join chef on restaurante.id_restaurante = chef.id_restaurante
			inner join menu on detalle.id_menu = menu.id_menu
		group by 
		  chef.nombre_chef,
		  chef.apellido_chef;
	BEGIN	
		OPEN cur_chef;
		FETCh cur_chef INTO datosdechef;
		while (found) loop 
		RAISE NOTICE 
		'
		Nombre del Chef: % 
		Cantida de menus preparados: % 
		Total en dinero: % 
		',
		datosdechef.nombre_chef, datosdechef.total_menu, datosdechef.total;
		FETCh cur_chef INTO datosdechef;
	end loop;	
	end $$
	Language 'plpgsql';