drop schema if exists premijer_liga;
create schema premijer_liga default character set utf8 default collate utf8_unicode_ci;
use premijer_liga;

/* 
	@author Bosko Gogic
    Baza podataka koja reprezentuje fudbalsku Premijer Ligu Engleske.
*/

/* Mapiranje klase KLUB i veznih klasa. */
create table KLUB
(
	IdKlub int auto_increment primary key,
	IdDrzavaUjedinjenoKraljevstvo int not null,
    IdLiga int not null,
    IdStadion int not null,
    Naziv varchar(50),
    Adresa varchar(50),
    foreign key (IdDrzavaUjedinjenoKraljevstvo)
    references DRZAVA_UJEDINJENO_KRALJEVSTVO (IdDrzavaUjedinjenoKraljevstvo),
    foreign key (IdLiga)
    references LIGA (IdLIga),
    foreign key (IdStadion)
    references STADION (IdStadion)
);

create table DRZAVA_UJEDINJENO_KRALJEVSTVO
(
	IdDrzavaUjedinjenoKraljevstvo int auto_increment primary key,
    Naziv varchar(50),
    BrojStanovnika int
);

create table LIGA
(
	IdLiga int auto_increment primary key,
    Naziv varchar(50),
    BrojKlubova int,
    NagradniFond int,
    BrojKola int
);

create table STADION
(
	IdStadion int auto_increment primary key,
    IdGrada int not null,
    Naziv varchar(50),
    Drenaza tinyint,
    PodnoGrijanje tinyint,
    foreign key (IdGrada)
    references GRAD (IdGrada)
);

create table GRAD
(
	IdGrad int auto_increment primary key,
    Naziv varchar(50),
    BrojStanovnika int
);

/* Mapiranje klase OSOBA i klasa izvedenih iz klase OSOBA.*/
create table OSOBA
(
	IdOsoba int auto_increment primary key,
    Prezime varchar(20),
    Ime varchar(20),
    DatumRodjenja date
);

create table IGRAC
(
	IdOsobe int not null,
    IdKluba int not null,
    Pozicija varchar(20),
    Plata int,
    BrojGolova int,
    UkupanBrojAsistencija int,
    BrojNaDresu int,
    Nacionalnost varchar(50),
    primary key (IdOsobe),
    foreign key (IdOsobe)
    references OSOBA(IdOsobe),
    foreign key (IdKluba)
    references KLUB(IdKluba)
);

create table SUDIJA
(
	IdOsobe int not null,
    primary key(IdOsobe),
    foreign key (IdOsobe)
	references OSOBA(IdOsobe)
);

/* Mapiranje Klase UTAKMICA i veznih klasa koje opisuju dogadjaje na utakmici. */
create table UTAKMICA
(
	IdUtakmice int auto_increment primary key,
    Termin date,
    IdKlubDomaci int not null,
    IdKlubGostujuci int not null,
    BrojGolovaDomaci int,
    BrojGolovaGostujuci int,
    foreign key (IdKlubDomaci)
    references KLUB(IdKlubDomaci),
    foreign key (IdKlubGostujuci)
    references KLUB(IdKlubGostujuci)
);

create table KOLO
(
	IdLiga int not null,
    IdUtakmica int not null,
    RedniBroj int,
    Sezona int,
    primary key (IdLiga,IdUtakmica),
    foreign key (IdLiga)
    references LIGA(IdLIga),
    foreign key (IdUtakmica)
    references UTAKMICA(IdUtakmica)
);

create table DETALJI_UTAKMICE
(
	IdUtakmica int not null,
    IdIgrac int not null,
    IgraoOdMinute int,
    IgraoDoMinute int,
    primary key(IdUtakmica,IdIgrac),
    foreign key (IdUtakmica)
    references UTAKMICA(IdUtakmica),
    foreign key (IdIgrac)
    references IGRAC(IdIgrac)
);

create table UKLJUCUJE
(
	IdUtakmica int not null,
    IdIgrac int not null,
    IdVrstaDogadjaja int not null,
    primary key (IdUtakmica,IdIgrac,IdVrstaDogadjaja),
    foreign key (IdUtakmica)
    references UTAKMICA(IdUtakmica),
    foreign key (IdIgrac)
    references IGRAC(IdIgrac),
    foreign key (IdVrstaDogadjaja)
    references DOGADJAJ(IdVrstaDogadjaja)
);

create table DOGADJAJ
(
	IdVrstaDogadjaja int not null,
    minutDogadjaja int,
    primary key(IdVrstaDogadjaja),
    foreign key (IdVrstaDogadjaja)
    references VRSTA_DOGADJAJA(IdVrstaDogadjaja)
);

create table VRSTA_DOGADJAJA
(
	IdVrstaDogadjaja int auto_increment primary key,
    Opis varchar(50)
);

/* Mapiranje klasa vezanih za klasu UTAKMICA a koje su vezane za klasu SUDIJA. */
create table SUDI
(
	IdSudija int not null,
    IdUtakmica int not null,
    IdPozicija int not null,
    primary key (IdSudija, IdUtakmica),
    foreign key (IdSudija)
    references SUDIJA(IdSudija),
    foreign key (IdUtakmica)
    references UTAKMICA(IdUtakmica),
    foreign key (IdPozicija)
    references POZICIJA(IdPozicija)
);

create table POZICIJA
(
	IdPozicija int auto_increment primary key,
    NazivPozicije varchar(50)
);