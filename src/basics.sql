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

 create table PracownicyJezykiObce(
 IdPracownika int,
 JezykObcy varchar(30) references JezykiObce(JezykObcy) on delete no action on update cascade,
 constraint kppjo primary key (IdPracownika, JezykObcy),
 Poziom varchar(30),
constraint rpjop foreign key(IdPracownika) references Pracownicy(IdPracownika)
on delete cascade on update no action
)

