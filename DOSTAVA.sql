CREATE TABLE KORISNIK(
USERNAME VARCHAR(15) PRIMARY KEY,
SIFRA VARCHAR(15),
IME_PREZIME VARCHAR(40),
TIP_KORISNIKA VARCHAR(10),
ADRESA TEXT);

CREATE TABLE RESTORAN(
ID_RESTORANA SERIAL PRIMARY KEY,
NAZIV VARCHAR(25),
ADRESA TEXT);

CREATE TABLE PORUDZBINA(
ID_PORUDZBINE PRIMARY KEY SERIAL,
USER_DOSTAVLJACA VARCHAR(15),
USER_KUPAC VARCHAR(15) NOT NULL,
NAZIV_JELA TEXT[] NOT NULL,
DOSTAVLJEN BOOLEAN NOT NULL DEFAULT FALSE,
ADRESA_ISPORUKE TEXT NOT NULL,
UKUPNA_CENA INTEGER);

CONSTRAINT FK1 FOREIGN KEY (DOSTAVLJAC) REFERENCES KORISNIK(USERNAME),
CONSTRAINT FK2 FOREIGN KEY(MUSTERIJA) REFERENCES KORISNIK(USERNAME)

CREATE TABLE JELA(
ID_JELA SERIAL PRIMARY KEY,
NAZIV VARCHAR(20) NOT NULL,
RESTORAN INTEGER,
CENA INTEGER,
OPIS TEXT,
FOREIGN KEY(RESTORAN) REFERENCES RESTORAN(ID_RESTORANA) )


