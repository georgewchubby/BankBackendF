insert into Persons values ('121256-0555', 'Hr', 'Kurt', 'Hansen', 'Solvej 8', 4550,
'01234567', 'kurt@mail.dk', 'test');
insert into Persons values ('111190-0444', 'Fr', 'Sonja', 'Jensen', 'Månegade 8', 8000,
'76543210', 'sonja@mail.dk', 'test');
insert into Persons values ('010256-0777', 'Hr', 'James', 'Bond', 'Mars Alle 17', 7007,
'20007007', 'james@bond.dk', 'test');
insert into Persons values ('1305902222','Hr','Hans','Hansen','Balevej 9',4550,'42424252','Hans@email.dk',null);
insert into Persons values ('1405903333','Hr','Jan','Jansen','JansenVej 10',2700,'67262819','Jan@email.dk',null);
insert into Persons values ('1510442323','Fr','Julie','Julisen','JuleVej 11',2800,'28329832','Julie@email.dk',null);
insert into Persons values ('1209903232','Fr','Anna','Annasen','AndVej 13',3300,'75927191','Anne@email.dk',null);
insert into Persons values ('1406399999','Hr','Lars','Larsen','Landvejen 42',9200,'92327151','Lars@email.dk',null);
insert into Persons values ('1204881231','Fr','Marie','Mariesen','MarkenVej 32',9000,'93281791','Marie@email.dk',null);
insert into Persons values ('2306878918','Hr','Kasper','Kaspersen','KarsenVej 33',6760,'75757291','Kasper@email.dk',null);
insert into Persons values ('2303830990','Fr','Elisabeth','Elisaben','ElVejen 55',5700,'67869699','Eli@email.dk',null);
insert into Persons values ('1208789990','Hr','Ulrik','Ulriksen','UdeBoenVej 75',2300,'65786891','Ulrik@email.dk',null);
insert into Persons values ('1308893232','Fr','Bigitte','Bigittesen','Bagvejen 21',2100,'91238191','Bigitte@email.dk',null);
insert into Persons values ('1508782312','Hr','Ivan','Ivansen','InternVej 91',8800,'56662781','Ivan@email.dk',null);
insert into Persons values ('1109872121','Fr','Nina','Ninasen','NakkeVejen 12',5200,'93237519','Ninna@email.dk',null);
insert into Persons values ('1608529091','Hr','Alexander','Alexsen','AlleGyden 11',4400,'27951781','Alex@email.dk',null);
insert into Persons values ('1512741212','Fr','Vanessa','Vanessen','VandermarkVej 30',2600,'28588192','Vannessa@email.dk',null);
insert into Persons values ('2310568877','Hr','Saleh','Salehsen','SamarmargeVej 11',2100,'75195218','Saleh@email.dk',null);
insert into Persons values ('2109401212','Fr','Sille','Sillesen','SildeVejen 85',7900,'65231818','Sille@email.dk',null);
insert into Persons values ('1205351231','Hr','David','Davidsen','DanmarkVej 99',2100,'85182819','David@email.dk',null);
insert into Persons values ('2412453313','Fr','Janne','Jannesen','JakkeVej 78',4500,'12019320','Janne@email.dk',null);

insert into accounts values ('4711-1001', 1000, 0.08, '121256-0555');
insert into accounts values ('4711-1002', 1000, 0.025, '121256-0555');
insert into accounts values ('4711-1003', 1000, 0.035, '121256-0555');
insert into accounts values ('4711-1004', 1000, 0.026, '121256-0555');
insert into accounts values ('4711-1005', 1000, 0.1, '111190-0444');
insert into accounts values ('4711-1006', 1000, 0.01, '111190-0444');
insert into accounts values ('4711-1007', 1000, 0.25, '010256-0777');

insert into transfers values (1, 10000, '2014-01-01', '4711-1001', '4711-1007');
insert into transfers values (2, 12345, '2014-01-01', '4711-1005', '4711-1007');
insert into transfers values (3, 5000, '2014-01-01', '4711-1001', '4711-1005');