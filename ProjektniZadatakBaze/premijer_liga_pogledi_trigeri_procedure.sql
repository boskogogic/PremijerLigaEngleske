/* 
	@author Bosko Gogic
    Pogledi, trigeri i procedure koje ce mi koristiti za bazu podataka premijer_liga.
*/

use premijer_liga;

--  POGLEDI --
/* Prikaz prostih informacija o odredjenom klubu. */
create view klubPrikaz as
select Naziv, Adresa
from KLUB;

/* Prikaz prostih informacija o samoj ligi . */
create view ligaPrikaz as
select Naziv, BrojKlubova, BrojKola
from LIGA;

/* Prikaz prostih informacija o odredjenom igracu. */
create view igracPrikaz as 
select BrojNaDresu, Nacionalnost, o.Prezime, o.Ime
from IGRAC i inner join OSOBA o on i.id = o.id;

/* Prikaz informacija o igracima koji su postigli 1 ili vise golova. */
create view IgracGolovi as
select BrojNaDresu, Nacionalnost, o.Prezime, o.Ime, brojGolova
from IGRAC i inner join OSOBA o on i.id = o.id 
where brojGolova > 1;

-- TRIGERI --
/* Triger koji postavlja vrijeme(termin) utakmice nakon sto se napravi nova kolona u tabeli UTAKMICA. - Provjeriti jos */
create trigger utakmicaBeforeInsert before insert 
on UTAKMICA 
for each row 
set new.termin = current_timestamp();

/* Triger koji uvecava broj klubova u tabeli LIGA kada se napravi novi red(klub) u tabeli KLUB. */
create trigger ligaUvecajBrojKlubova after insert 
on KLUB 
for each row
update LIGA
set brojKlubova = brojKlubova + 1;


/* Triger koji umanjuje broj klubova u tabeli LIGA kada se izbrise jedan od klubova iz tabele KLUB. */
create trigger ligaUmanjiBrojKlubova after delete 
on KLUB 
for each row
update LIGA
set brojKlubova = brojKlubova - 1;

-- PROCEDURE --
/*	Procedura koja racuna (izmisljeni) indeks korisnosti igraca. 
	Indeks korisnosti se racuna kao (2*broj golova) + broj asistentcija. 
*/
DELIMITER $$

create procedure prosjek_golova(in IdOsoba int, out indeksKorisnosi int)
begin
	declare korisnostBrojGolova, korisnostBrojAsistencija, indeksKorisnosti int default 0;
    select brojGolova into korisnostBrojGolova 
    from IGRAC i
    where IdIgrac = IdOsoba;
    set korisnostBrojGolova = korisnostBrojGolova*2;
    select brojAsistencija into korisnostBrojAsistencija
    from IGRAC i /* Da li moze samo from IGRAC ili moze i IGRAC i ili je dozvoljeno obe solucije ? */
    where IdIgrac = IdOsoba;
    set indeksKorisnosti = korisnostBrojGolova + korisnostBrojAsistentcija;
end$$

DELIMITER ;

/* Procedura koja uvecava UKUPAN broj postignutih golova kada igrac postigne gol na odredjenoj utakmici */
DELIMITER $$

create procedure uvecaj_ukupan_broj_golova(in IdIgracI int, in IdUtakmicaU int, in IdVrstaDogadjajDJ int)
begin
	declare opisDogadjaja varchar(50) default null;
    select Opis into opisDogadjaja
    from DETALJI_UTAKMICE du inner join UKLJUCUJE u inner join DOGADJAJ dj inner join VRSTA_DOGADJAJA vr_dj
    where IdIgraca = IdIgracI and IdUtakmica = IdUtakmicaU and IdVrstaDogadjaja = IdVrstaDogadjajaDJ ;
    if opisDogadjaja = 'Gol' then
		update IGRAC set brojGolova = brojGolova +1 
        where IdIgrac = IdIgracI;
	end if;
end$$

DELIMITER ;

/* Procedura koja uvecava UKUPAN broj asistentcija kada igrac zabiljezi asistentciju na odredjenoj utakmici */
DELIMITER $$

create procedure uvecaj_ukupan_broj_golova(in IdIgracI int, in IdUtakmicaU int, in IdVrstaDogadjajDJ int)
begin
	declare opisDogadjaja varchar(50) default null;
    select Opis into opisDogadjaja
    from DETALJI_UTAKMICE du inner join UKLJUCUJE u inner join DOGADJAJ dj inner join VRSTA_DOGADJAJA vr_dj
    where IdIgraca = IdIgracI and IdUtakmica = IdUtakmicaU and IdVrstaDogadjaja = IdVrstaDogadjajaDJ ;
    if opisDogadjaja = 'Gol' then
		update IGRAC set brojAsistencija = brojAsistencija +1 
        where IdIgrac = IdIgracI;
	end if;
end$$

DELIMITER ;



