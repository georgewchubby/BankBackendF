create table Postal (
postalCode int primary key,
postalDistrict varchar(80)
);

create table Persons (
cpr int primary key,
title varchar(80),
firstName varchar(80) not null,
lastName varchar(80) not null,
street varchar(80),
phone varchar(80), 
email varchar(80),
password varchar(80),
postalCode int not null references Postal(postalCode)
);

create table Account (
accountNumber varchar(80),
balance int,
interest decimal
);