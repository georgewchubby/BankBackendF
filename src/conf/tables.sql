drop table transfer;
drop table account;
drop table persons;
drop table postal;

create table Postal (
postalCode int primary key,
postalDistrict varchar(40)
);

create table Persons (
cpr varchar(11) primary key,
title varchar(80),
firstName varchar(80) not null,
lastName varchar(80) not null,
street varchar(80),
postalCode int not null references Postal(postalCode),
phone varchar(8), 
email varchar(80),
password varchar(255)
);

create table Account (
accountNumber varchar(80) primary key,
balance int,
interest decimal,
owner varchar(11) not null references Persons(cpr)
);

create table Transfer (
amount decimal,
transferDate date,
sourceAccount varchar(80) primary key not null references Account(accountNumber),
targetAccount varchar(80) not null references Account(accountNumber)
);
