use master

drop database Firma;
create database Firma;

use Firma;

create table Produkty (Producent nvarchar(50) not null, Model nvarchar(50) Primary key not null, Typ nvarchar(50) not null);
create table PC (Model nvarchar(50) Primary key not null, Procesor int, Ram int, Hdd int, Cd int, Ekran int, Cena money);
create table Laptop (Model nvarchar(50) Primary key not null, Procesor int, Ram int, Hdd int, Ekran int, Cena money);
create table Drukarki (Model nvarchar(50) Primary key not null, Kolor bit, Typ nvarchar(50), Cena money);

alter table PC add constraint fk_Produkty_PC foreign key (model) references Produkty(model);
alter table Laptop add constraint fk_Produkty_Laptop foreign key (model) references Produkty(model);
alter table Drukarki add constraint fk_Produkty_Drukarki foreign key (model) references Produkty(model);
