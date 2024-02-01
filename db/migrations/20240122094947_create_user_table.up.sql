
CREATE TABLE Adresse (
    id SERIAL NOT NULL,
    strasse TEXT NOT NULL,
    stadt TEXT NOT NULL,
    plz TEXT NOT NULL,

    CONSTRAINT Adresse_pkey PRIMARY KEY (id)
);


CREATE TABLE Kunde (
    id SERIAL NOT NULL,
    adresseId INTEGER NOT NULL,
    name TEXT NOT NULL,
    vorname TEXT NOT NULL,
    mail TEXT NOT NULL,

    CONSTRAINT Kunde_pkey PRIMARY KEY (id)
);

CREATE TABLE Bestellung (
    id SERIAL NOT NULL,
    kundeId INTEGER NOT NULL,
    bestellungDatum DATE NOT NULL,

    CONSTRAINT Bestellung_pkey PRIMARY KEY (id)
);

CREATE TABLE Rezept (
    id SERIAL NOT NULL,
    bezeichnung TEXT NOT NULL,
    beschreibung TEXT NOT NULL,

    CONSTRAINT Rezept_pkey PRIMARY KEY (id)
);

CREATE TABLE Ernaehrungskategorie (
    id SERIAL NOT NULL,
    bezeichnung TEXT NOT NULL,

    CONSTRAINT Ernaehrungskategorie_pkey PRIMARY KEY (id)
);

CREATE TABLE Allergene (
    id SERIAL NOT NULL,
    bezeichnung TEXT NOT NULL,

    CONSTRAINT Allergene_pkey PRIMARY KEY (id)
);

CREATE TABLE Zutat (
    id SERIAL NOT NULL,
    lieferantId INTEGER NOT NULL,
    fett DECIMAL (65,30) NOT NULL,
    bezeichnung TEXT NOT NULL,
    preis DECIMAL(65,30) NOT NULL,
    einheit VARCHAR(10) NOT NULL,
    protein DECIMAL(65,30) NOT NULL,
    kalorien DECIMAL(65,30) NOT NULL,
    kohlenhydrate DECIMAL(65,30) NOT NULL,

    CONSTRAINT Zutat_pkey PRIMARY KEY (id)
);

CREATE TABLE RezepteInBestellung (
    rezeptId INTEGER NOT NULL,
    bestellungId INTEGER NOT NULL,
    menge INTEGER NOT NULL,

    CONSTRAINT RezepteInBestellung_pkey PRIMARY KEY (rezeptId,bestellungId)
);

CREATE TABLE ZutatenInRezept (
    zutatId INTEGER NOT NULL,
    rezeptId INTEGER NOT NULL,
    menge INTEGER NOT NULL,
    einheit VARCHAR(10) NOT NULL,

    CONSTRAINT ZutatenInRezept_pkey PRIMARY KEY (zutatId,rezeptId)
);

CREATE TABLE Lieferant (
    id SERIAL NOT NULL,
    adresseId INTEGER NOT NULL,
    name TEXT NOT NULL,
    mail TEXT NOT NULL,

    CONSTRAINT Lieferant_pkey PRIMARY KEY (id)
);

CREATE TABLE _ErnaehrungskategorieToRezept (
    A INTEGER NOT NULL,
    B INTEGER NOT NULL
);

CREATE TABLE _AllergeneToRezept (
    A INTEGER NOT NULL,
    B INTEGER NOT NULL
);

CREATE UNIQUE INDEX Kunde_adresseId_key ON Kunde(adresseId);

CREATE UNIQUE INDEX Lieferant_adresseId_key ON Lieferant(adresseId);

CREATE UNIQUE INDEX _ErnaehrungskategorieToRezept_AB_unique ON _ErnaehrungskategorieToRezept(A, B);

CREATE INDEX _ErnaehrungskategorieToRezept_B_index ON _ErnaehrungskategorieToRezept(B);

CREATE UNIQUE INDEX _AllergeneToRezept_AB_unique ON _AllergeneToRezept(A, B);

CREATE INDEX _AllergeneToRezept_B_index ON _AllergeneToRezept(B);

ALTER TABLE Kunde ADD CONSTRAINT Kunde_adresseId_fkey FOREIGN KEY (adresseId) REFERENCES Adresse(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Bestellung ADD CONSTRAINT Bestellung_kundeId_fkey FOREIGN KEY (kundeId) REFERENCES Kunde(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Zutat ADD CONSTRAINT Zutat_lieferantId_fkey FOREIGN KEY (lieferantId) REFERENCES Lieferant(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE RezepteInBestellung ADD CONSTRAINT RezepteInBestellung_rezeptId_fkey FOREIGN KEY (rezeptId) REFERENCES Rezept(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE RezepteInBestellung ADD CONSTRAINT RezepteInBestellung_bestellungId_fkey FOREIGN KEY (bestellungId) REFERENCES Bestellung(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE ZutatenInRezept ADD CONSTRAINT ZutatenInRezept_zutatId_fkey FOREIGN KEY (zutatId) REFERENCES Zutat(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE ZutatenInRezept ADD CONSTRAINT ZutatenInRezept_rezeptId_fkey FOREIGN KEY (rezeptId) REFERENCES Rezept(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Lieferant ADD CONSTRAINT Lieferant_adresseId_fkey FOREIGN KEY (adresseId) REFERENCES Adresse(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE _ErnaehrungskategorieToRezept ADD CONSTRAINT _ErnaehrungskategorieToRezept_A_fkey FOREIGN KEY (A) REFERENCES Ernaehrungskategorie(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE _ErnaehrungskategorieToRezept ADD CONSTRAINT _ErnaehrungskategorieToRezept_B_fkey FOREIGN KEY (B) REFERENCES Rezept(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE _AllergeneToRezept ADD CONSTRAINT _AllergeneToRezept_A_fkey FOREIGN KEY (A) REFERENCES Allergene(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE _AllergeneToRezept ADD CONSTRAINT _AllergeneToRezept_B_fkey FOREIGN KEY (B) REFERENCES Rezept(id) ON DELETE CASCADE ON UPDATE CASCADE;
