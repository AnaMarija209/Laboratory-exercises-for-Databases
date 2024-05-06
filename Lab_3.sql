select * from aviokompanii.airport as a
join aviokompanii.city as c on a.id_city=c.id_city 
left join aviokompanii.phone_number as p on a.id_airport=p.id_airport 






select a2.id_airplane_type, a."name", at1.manufacturer, ao.owned_to_date 
from airline as a
join aircraft_ownership as ao on a.id_airline = ao.id_airline  
join aircraft as a2 on ao.serial_number = a2.serial_number 
join airplane_type as at1 on a2.id_airplane_type =at1.id_airplane_type 
where lower(at1.manufacturer)='airbus' and
ao.owned_from_date < now() and
      (ao.owned_to_date isnull or ao.owned_to_date>now());

