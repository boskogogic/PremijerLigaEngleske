
/* 
	@author Bosko Gogic
    Testni podaci za bazu podataka Premijer_Liga.
*/

use premijer_liga;

insert into DRZAVA_UJEDINJENO_KRALJEVSTVO (IdDrzavaUjedinjenoKraljevstvo, Naziv, BrojStanovnika) values (1, 'Engleska', 56,286,96); 
insert into DRZAVA_UJEDINJENO_KRALJEVSTVO (IdDrzavaUjedinjenoKraljevstvo, Naziv, BrojStanovnika) values (2, 'Vels',  3,153,000);

insert into LIGA (IdLIga, Naziv, BrojKlubova, NagradniFond, BrojKola) values (1, 'Premijer Liga Engleske', 20, 100,000,000, 38);

insert into GRAD (IdGrad, Naziv, BrojStanovnika) values (1, 'London', 14,000,000);
insert into GRAD (IdGrad, Naziv, BrojStanovnika) values (2, 'Mancester', 2,705,000);
insert into GRAD (IdGrad, Naziv, BrojStanovnika) values (3, 'Liverpul', 2,241,000);

insert into STADION (IdStadion, IdGrada, Naziv, Drenaza, PodnoGrijanje) values (1, 1, 'Emirejts', true, true);
insert into STADION (IdStadion, IdGrada, Naziv, Drenaza, PodnoGrijanje) values (2,1, 'Stemford Bridz', true,false);
insert into STADION (IdStadion, IdGrada, Naziv, Drenaza, PodnoGrijanje) values(3, 1, 'Tottenham Hotspur Stadium', true, true);
insert into STADION (IdStadion, IdGrada, Naziv, Drenaza, PodnoGrijanje) values (4, 2, 'Old Traford' , true, true);
insert into STADION (IdStadion, IdGrada, Naziv, Drenaza, PodnoGrijanje) values (5, 2, 'Etihad', true, true);
insert into STADION (IdStadion, IdGrada, Naziv, Drenaza, PodnoGrijanje) values (6,3, 'Enfild Roud', true, true);
    
insert into KLUB (IdKlub, IdDrzavaUjedinjenoKraljevstvo, IdLiga, IdStadion, Naziv, Adresa) values (1,1,1,1, 'Arsenal FC', 'London Borough of Islington, London');
insert into KLUB (IdKlub, IdDrzavaUjedinjenoKraljevstvo, IdLiga, IdStadion, Naziv, Adresa) values (2, 1, 1, 2, 'Chelsea FC', ' Chelsea, London');
insert into KLUB (IdKlub, IdDrzavaUjedinjenoKraljevstvo, IdLiga, IdStadion, Naziv, Adresa) values (3, 1, 1, 3, 'Tottenham Hotspur FC', 'Tottenham, London');
insert into KLUB (IdKlub, IdDrzavaUjedinjenoKraljevstvo, IdLiga, IdStadion, Naziv, Adresa) values (4, 1, 1, 4, 'Manchester United FC' , ' Old Trafford, Greater Manchester,');
insert into KLUB (IdKlub, IdDrzavaUjedinjenoKraljevstvo, IdLiga, IdStadion, Naziv, Adresa) values (5, 1, 1, 5, 'Manchester City FC', 'Manchester, England');
insert into KLUB (IdKlub, IdDrzavaUjedinjenoKraljevstvo, IdLiga, IdStadion, Naziv, Adresa) values (6, 1, 1, 6, 'Liverpool FC', 'Liverpool, England');

/* Postave -> Prvo golman, pa sa lijeva na desno po linijama (odbrana, sredina, napad). */
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (1, Leno, Bernd, '04.03.1992.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (2, Tierney, Kieran, '05.06.1997.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (3, Gabriel, null, '19.12.1997.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (4, White, Ben, '08.10.1997.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (5, Cedric, Soares, '31.08.1991.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (6, Xhaka, Granit, '27.09.1992.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (7, Partey, Thomas, '13.06.1993.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (8, Martinelli, Gabriel, '18.06.2001');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (9, Odegaard, Martin, '17.12.1998');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (10, Saka, Bukayo, '05.09.2001');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (11, Lacazette, Alexandre, '28.05.1991.');
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (12, Holding, Rob, '20.09.1995');

insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (

insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (

insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (

insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (

insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (1, Alisson, Becker, 02.10.1992
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
insert into OSOBA (IdOsoba, Prezime, Ime, DatumRodjenja) values (
