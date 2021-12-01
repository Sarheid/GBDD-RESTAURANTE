insert into RESTAURANTE values (101, 'Restaurante Gemelos', 'Manta Central', 'Carmen Sornoza', '0934746588');
insert into RESTAURANTE values (102, 'Restaurante JuanCa', 'Flavio Reyes', 'Jennifer Mantuano', '0975778888');
insert into RESTAURANTE values (103, 'Restaurante ElDanJ', 'Barrio San Agustin', 'Maria Camila Zambrano', '0845638264');

insert into CHEF values(1, 101, '1350696394', 'Mauricio', 'Carvajal', '0983364542', 'San juan');
insert into CHEF values(2, 102, '0037467589', 'Bernardo', 'Delgado', '0965457732', 'Sannta Marta');
insert into CHEF values(3, 103, '1736485893', 'Juan Carlos', 'Cedeño', '0873356278', 'San Pablo');
insert into CHEF values(4, 102, '1736484027', 'Santa', 'Dueñas', '0973635782', 'Altagracia');
insert into CHEF values(5, 101, '0003476472', 'Gabriela', 'Mendoza', '0983334542', 'La Pradera');

insert into CLIENTE values(1, 'Carlos', 'Alcivar', '1673949038', '0983424523', 'carlos@gmail.com');
insert into CLIENTE values(2, 'Juan', 'Altasig', '1350696397', '0983424523', 'juans@gmail.com');
insert into CLIENTE values(3, 'Karla', 'Cheme', '1315868057', '0983424523', 'karla@gmail.com');
insert into CLIENTE values(4, 'Dayana', 'Alvarez', '1307735769', '0983424523', 'dayana@gmail.com');
insert into CLIENTE values(5, 'Stefanya', 'Delgado', '1350696395', '0983424523', 'stefanya@gmail.com');
insert into CLIENTE values(6, 'Yuletzi', 'Cevallos', '13077350284', '0983424523', 'yuetzi@gmail.com');
insert into CLIENTE values(7, 'Josue', 'Santander', '1317452829', '0983424523', 'josue@gmail.com');

insert into FACTURA values(1, 5, 101, 0.00, '12/08/2020');
insert into FACTURA values(2, 1, 101, 0.00,'30/05/2020');
insert into FACTURA values(3, 3, 102, 0.00,'28/02/2021');
insert into FACTURA values(4, 2, 103, 0.00,'12/07/2020');
insert into FACTURA values(5, 6, 103, 0.00,'15/09/2021');
insert into FACTURA values(6, 4, 102, 0.00,'22/10/2021');
insert into FACTURA values(7, 5, 101, 0.00,'18/01/2021');
insert into FACTURA values(8, 6, 102, 0.00,'14/04/2021');

insert into MENU values(1, 'Menu completo', 8.50, 5.00, 'Este menu es completo y la decision de lo que contiene es del cliente');
insert into MENU values(2, 'Burguer', 6.50, 3.50, 'Esta es una ha,burguesa contine de todo ');
insert into MENU values(3, 'Grilleth', 7.50, 7.00, 'Es establecid por el cliente');
insert into MENU values(4, 'Cooked',5.60, 3.00, 'Este menu es el mas indicado y mas economico');

insert into DETALLE values(8, 3, 3, 4.00, 12.00,'Esto se ha comprado par la familia ');
insert into DETALLE values(4, 4, 5, 6.00,  30.00, 'Esta persona ha comprado para llevar');
insert into DETALLE values(5, 2, 3, 3.00,  9.00, 'Por un cumpleaños ');
insert into DETALLE values(2, 3, 8, 5.00,  40.00, 'Grupo de estudiantes ');
insert into DETALLE values(2, 1, 7, 5.75,  40.25,'Grupo familiar');
insert into DETALLE values(3, 4, 2, 2.75,  5.50, 'Producto retirado ');
insert into DETALLE values(1, 2, 1, 7.00,  7.00, 'Celebracion de cumpleaños');

insert into MATERIAL values(1, 101,  'Pechugas de pollo', 54, '15/08/2021');
insert into MATERIAL values(2, 101,  'carne molida en libras', 154, '25/10/2021');
insert into MATERIAL values(3, 102,  'arroz por libra', 45, '16/06/2020');
insert into MATERIAL values(4, 102,  'verduras', 78, '27/08/2020');
insert into MATERIAL values(5, 103,  'Papa en libras', 132, '05/11/2021');


insert into RESERVACION values(1, 5, 'completado','0', 5, 8.50, 'Esta mesa fue reservada hace un mes');
insert into RESERVACION values(2, 1, 'rechazada','1', 3, 8.50,'esta mesa es reervada con 5 espacios');
insert into RESERVACION values(3, 2, 'caancelada','0', 1, 5.00,'Esta mesa es reservada para dos dias seguidos');
insert into RESERVACION values(4, 4, 'pagada','0', 2, 8.50,'esta mesa es reservada para el domingo');
insert into RESERVACION values(5, 3, 'rechazada','1', 4, 7.25, 'esta mesa es reservada por motivo de cumpleaños');
insert into RESERVACION values(6, 6, 'pagada','0',1, 13.00, 'Esta mesa es reservada para pedida de mano');
insert into RESERVACION values(7, 7, 'rechazada','1',5, 6.00, 'esta mesa es reservada para pedir matrimonio');
insert into RESERVACION values(8, 1, 'completada','0',3, 6.5, 'esta es una cena de pareja');
insert into RESERVACION values(9, 2, 'cancelada','0',2, 7, 'esta reservada para 12 personas cena familiar');
insert into RESERVACION values(10, 1, 'rechazada','0',2, 8.50,'esta reservada para 12 personas cena familiar');
insert into RESERVACION values(11, 1, 'rechazada','0',2, 8.50,'esta reservada para 12 personas cena familiar');
insert into RESERVACION values(12, 1, 'completada','0',2, 6.5,'esta reservada para 12 personas cena familiar');
	  

insert into MESERO values(1, 103,  '1350745362', 'Carolina', 'Santana',  '0937474853', 'Barrio Lss Esteros');
insert into MESERO values(2, 102,  '0073646272', 'Angelica', 'Robles',   '0936371721', 'Barrio Santa Marta');
insert into MESERO values(3, 101,  '1307565633', 'Efrain', 'Ruales',     '0964738181', 'Ciudadela Universitaria');
insert into MESERO values(4, 102,  '1736567372', 'Jhon', 'Cevallos',     '0909064572', 'Montecristi');
insert into MESERO values(5, 101,  '1308456474', 'Catalina', 'Santander','0989836234', 'La proaño');
insert into MESERO values(6, 103,  '1625373844', 'Carolina', 'Gaitan',   '0938621313', 'La Aurora');

insert into MESAS values(1, 6,  2);
insert into MESAS values(2, 1,  3);
insert into MESAS values(3, 2,  4);
insert into MESAS values(4, 2,  2);
insert into MESAS values(5, 3,  1);
