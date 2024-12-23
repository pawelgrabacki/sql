create database pracownicy_jezykiobce
use pracownicy_jezykiobce

create table pracownicy(
IdPracownika int identity(1,1) primary key,
Nazwisko varchar(50) not null,
Imie varchar(50) not null,
DataUrodzenia date,
DataZatrudnienia date,
StawkaMiesieczna decimal(10,2)
)

create table JezykiObce(
JezykObcy varchar(30) primary key

)