create table services
(
	id serial primary key,
	category varchar(32),
	amount integer,
	ttime date,
	status varchar(1)
)

insert into services
(category, amount, ttime, status)
values ('A', 20, '7/18/2022', 'S'),
('B', 100, '7/18/2022', 'F'),
('C', 200, '7/18/2022', 'S'),
('C', 130, '6/18/2022', 'S'),
('A', 240, '7/18/2022', 'S'),
('B', 250, '5/18/2022', 'S'),
('C', 20, '7/15/2022', 'F');

select category, status,
sum(amount) as "amount sum"
from services
where status = 'S'
group by category, status;
