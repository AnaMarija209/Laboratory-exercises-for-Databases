insert into airplane_type(id_airplane_type,model,manufacturer)
values
(74,'587','Boeing'),
(75,'457','Airbus'),
(76,'321','Textron');

select * from airplane_type

select * from aircraft

insert into aircraft (serial_number ,id_airplane_type)
values
(50,20),
(51,21),
(52,22),
(53,23),
(54,24);

select * from airline;

insert into airline(id_airline,name,code)
values
(50, 'Ryanair', 'RYAN'),
(72, 'Wizzair', 'WIZZ');

select * from aircraft_ownership;

insert into aircraft_ownership(tail_number,owned_from_date,serial_number,id_airline)
values
('A0BERC', '2023-10-11',50,50),
('A1BERC', '2023-05-11',51,72),
('A2BERC', '2023-10-09,52,50),
('A3BERC', '2023-08-07',53,72),
('A4BERC', '2023-12-06',54,50);

select * from aircraft_leased_to_airline;

insert into aircraft_leased_to_airline(tail_number,id_airline,leased_from)
values
('A0BERC',50,'2023-10-06'),
('A1BERC',72,'2023-04-10'),
('A2BERC',50,'2023-03-01');