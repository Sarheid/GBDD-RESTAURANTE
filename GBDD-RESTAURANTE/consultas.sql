----Primera consulta con respecto al historico de los platos vendidos que salga el que mas se vendio al que menos se vendio
----ademas todos los platos que han existido en el restaurant teniendo en cuenta un año respectivo en este caso 2021 y ademas
----muestre el total obtenido por cada plato 

SELECT 
  menu.nombre_menu, 
  detalle.cant_producto, 
  menu.costo_menu,
  (menu.costo_menu*detalle.cant_producto)as total_pago,
  extract (year from factura.fecha_factura) AS año
FROM public.detalle
  INNER JOIN menu ON  detalle.id_menu = menu.id_menu
  INNER JOIN factura ON  detalle.id_factura = factura.id_factura  
WHERE
  extract (year from factura.fecha_factura) = 2020
GROUP BY 
  menu.nombre_menu, 
  detalle.cant_producto,
  menu.costo_menu,  
  extract (year from factura.fecha_factura)
ORDER BY total_pago desc



---Mostrar un cliente donde nos muestre las reservaciones realizadas y donde muestres cuantas 
---de ellas fueron rechazadas y cuantas se completaron e incluso muestre  el total en dinero que ha dejado.

SELECT 
  concat(cliente.nombre_cliente ||'  '|| cliente.apellido_cliente) as cliente,
  reservacion.est_reservacion, 
  count(reservacion.est_reservacion)as cantidad,
  reservacion.precio_reservacion, 
  (count(reservacion.est_reservacion))*(reservacion.precio_reservacion) as total_factura
FROM cliente
inner join reservacion on  reservacion.id_cliente = cliente.id_cliente
WHERE 
   cliente.nombre_cliente = 'Carlos'
GROUP BY 
  cliente.nombre_cliente,
  cliente.apellido_cliente,
  reservacion.est_reservacion,
  reservacion.precio_reservacion


 
---Que muestre el nombre del chef y de los materiales que este ha usado en el año 2021 
---con la cantidad de ingredientes que ha gastado 

SELECT 
  concat(chef.nombre_chef ||'  '|| chef.apellido_chef) as nombre_chef,
  material.nombre_material, 
  material.cantidad_material, 
  extract (year from material.fecha_material)
FROM restaurante
  inner join material on restaurante.id_restaurante = material.id_restaurante
  inner join chef on restaurante.id_restaurante = chef.id_restaurante
WHERE
 extract (year from material.fecha_material) = 2021
ORDER BY 
  cantidad_material ASC


----Histórico de atenciones de los meseros, cuantas reservaciones a atendido cada mesero y a cuantos clientes 
SELECT 
  mesero.nombre_mesero, 
  reservacion.est_reservacion,
  count(reservacion.est_reservacion) as total_reservaciones, 
  count(cliente.nombre_cliente) as total_clientes
FROM public.restaurante
  inner join mesero on restaurante.id_restaurante = mesero.id_restaurante
  inner join factura on factura.id_restaurante = restaurante.id_restaurante
  inner join cliente on factura.id_cliente = cliente.id_cliente
  inner join reservacion on  reservacion.id_cliente = cliente.id_cliente 
WHERE 
 reservacion.est_reservacion= 'completado'
group by 
   mesero.nombre_mesero, 
  reservacion.est_reservacion,
  cliente.nombre_cliente;


  
