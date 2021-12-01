SELECT 
  menu.nombre_menu, 
  detalle.cant_producto, 
  restaurante.nombre_restaurante, 
  restaurante.ubi_restaurante, 
  restaurante.ger_restaurante, 
  restaurante.telf_restaurante,
  (menu.costo_menu*detalle.cant_producto)as total_pago,
  extract (year from factura.fecha_factura) AS año
FROM detalle
  inner join factura on detalle.id_factura = factura.id_factura
  inner join menu on  menu.id_menu = detalle.id_menu
  inner join restaurante on restaurante.id_restaurante = factura.id_restaurante
WHERE 
  restaurante.nombre_restaurante ='Restaurante Gemelos'
GROUP BY 
  menu.nombre_menu, 
  detalle.cant_producto,
  menu.costo_menu,  
  extract (year from factura.fecha_factura),
  restaurante.nombre_restaurante, 
  restaurante.ubi_restaurante, 
  restaurante.ger_restaurante, 
  restaurante.telf_restaurante
ORDER BY 
  total_pago desc;
