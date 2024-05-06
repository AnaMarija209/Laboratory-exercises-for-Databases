select p.id_passenger, p.first_name,
case when count (distinct r.route_code) is null
then 0
else count(distinct r.route_code) end
as vkupno_ruti
from passenger p
left join travel t on p.id_passenger = t.id_passenger
left join ticket t1 on t.id_travel = t1.id_travel
left join flight f on t1.id_line = f.id_line
left join line l on f.id_line = l.id_line
left join route r on l.route_code = r.route_code
group by 1,2 



select count(distinct p.id_pregled) as broj_pregledi,
count (distinct case when d.id_pregled is null then p.id_pregled end ) as broj_bez_dijagnozi
from pregled p
left join dijagnosticira d on p.id_pregled = d.id_pregled
left join dijagnoza d2 on d.mkb10 = d2.mkb10