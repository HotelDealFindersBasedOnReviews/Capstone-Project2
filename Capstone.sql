show databases;
use accounts;
show tables;
create table prices(Hotel varchar(150),Address varchar(250),Phonenumber varchar(250),website1 varchar(100),price1 varchar(150),website2 varchar(150),price2 varchar(150),website3 varchar(150),price3 varchar(150));
insert into prices values('Hotel Om','Neemrana Fort Road, Police Station, Neemrana, Rajasthan 301705','098877 48067','Booking.com','2,300','Cleartrip.com','2,200','Yatra.com','2,100'),
						 ('Deco House','Neemrana, Alwar, Rajasthan 301001','8332910360','Booking.com','2,400','Cleartrip.com','2,200','Yatra.com','2,000'),
                         ('Rajasthani Guest House','Neemrana, Rajasthan 301705','76890 08737','Booking.com','2,000','Cleartrip.com','1,900','Yatra.com','2,000'),
                         ('Hotel Tokas Neemrana','National Highway 8, Japanese Zone, Neemrana, Rajasthan 301705','72404 01100','Travelguru.com','1,400','Cleartrip.com','1,300','Yatra.com','1,260');
select * from prices;











select * from role;
select * from user;
select * from user_role;