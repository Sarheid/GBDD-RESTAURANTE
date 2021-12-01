---Un trigger que me impida hacer una reservación para un cliente que ha cancelado dos 
----reservaciones seguidas. una advertencia que salga no reservarle.

create or replace function impida_reservar()
	returns trigger as $$
		declare 
		estado_cancelado varchar;
		total_cliente int;
	begin
	  SELECT est_reservacion  into estado_cancelado from RESERVACION where EST_RESERVACION = 'cancelado';
	  SELECT count(id_cliente) INTO total_cliente from RESERVACION where id_cliente = new.id_cliente 
	  and est_reservacion=estado_cancelado;
	  
		if (total_cliente > 2) then /**/
		  raise exception 'No se le puede reservar';
		end if;
		return new;
	end;$$
	Language plpgsql;
 
 
 
 CREATE trigger reservacion_denegada before insert
	on reservacion  for each row
	execute procedure impida_reservar();
 
 
 
 insert into RESERVACION values(14, 2, 'procesando','0',2, 7, 'esta reservada para 12 personas cena familiar');
 
 
 
 