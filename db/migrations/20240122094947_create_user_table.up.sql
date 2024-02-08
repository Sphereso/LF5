
CREATE TABLE Adresse (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    strasse TEXT NOT NULL,
    stadt TEXT NOT NULL,
    plz TEXT NOT NULL,

    CONSTRAINT Adresse_pkey PRIMARY KEY (id)
);


CREATE TABLE Kunde (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    adresseId UUID NOT NULL,
    name TEXT NOT NULL,
    vorname TEXT NOT NULL,
    mail TEXT NOT NULL,

    CONSTRAINT Kunde_pkey PRIMARY KEY (id)
);

CREATE TABLE Bestellung (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    kundeId UUID NOT NULL,
    bestellungDatum DATE NOT NULL,

    CONSTRAINT Bestellung_pkey PRIMARY KEY (id)
);

CREATE TABLE Rezept (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    bezeichnung TEXT NOT NULL,
    beschreibung TEXT NOT NULL,

    CONSTRAINT Rezept_pkey PRIMARY KEY (id)
);

CREATE TABLE Ernaehrungskategorie (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    bezeichnung TEXT NOT NULL,

    CONSTRAINT Ernaehrungskategorie_pkey PRIMARY KEY (id)
);

CREATE TABLE Allergene (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    bezeichnung TEXT NOT NULL,

    CONSTRAINT Allergene_pkey PRIMARY KEY (id)
);

CREATE TABLE Zutat (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    lieferantId UUID NOT NULL,
    fett DECIMAL (10,2) NOT NULL,
    bezeichnung TEXT NOT NULL,
    preis DECIMAL(10,2) NOT NULL,
    einheit VARCHAR(10) NOT NULL,
    protein DECIMAL(10,2) NOT NULL,
    kalorien DECIMAL(10,2) NOT NULL,
    kohlenhydrate DECIMAL(10,2) NOT NULL,

    CONSTRAINT Zutat_pkey PRIMARY KEY (id)
);

CREATE TABLE RezepteInBestellung (
    rezeptId UUID NOT NULL,
    bestellungId UUID NOT NULL,
    menge INTEGER NOT NULL,

    CONSTRAINT RezepteInBestellung_pkey PRIMARY KEY (rezeptId,bestellungId)
);

CREATE TABLE ZutatenInRezept (
    zutatId UUID NOT NULL,
    rezeptId UUID NOT NULL,
    menge INTEGER NOT NULL,

    CONSTRAINT ZutatenInRezept_pkey PRIMARY KEY (zutatId,rezeptId)
);

CREATE TABLE Lieferant (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    adresseId UUID NOT NULL,
    name TEXT NOT NULL,
    mail TEXT NOT NULL,

    CONSTRAINT Lieferant_pkey PRIMARY KEY (id)
);

CREATE TABLE ErnaehrungskategorieToRezept (
    ernaehrungskategorieId UUID NOT NULL,
    rezeptId UUID NOT NULL,

    CONSTRAINT ErnaehrungskategorieToRezept_pkey PRIMARY KEY (ernaehrungskategorieId,rezeptId)
);

CREATE TABLE AllergeneToRezept (
    allergeneId UUID NOT NULL,
    rezeptId UUID NOT NULL,

    CONSTRAINT AllergeneToRezept_pkey PRIMARY KEY (allergeneId,rezeptId)

);

CREATE UNIQUE INDEX Kunde_adresseId_key ON Kunde(adresseId);

CREATE UNIQUE INDEX Lieferant_adresseId_key ON Lieferant(adresseId);

ALTER TABLE Kunde ADD CONSTRAINT Kunde_adresseId_fkey FOREIGN KEY (adresseId) REFERENCES Adresse(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Bestellung ADD CONSTRAINT Bestellung_kundeId_fkey FOREIGN KEY (kundeId) REFERENCES Kunde(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Zutat ADD CONSTRAINT Zutat_lieferantId_fkey FOREIGN KEY (lieferantId) REFERENCES Lieferant(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE RezepteInBestellung ADD CONSTRAINT RezepteInBestellung_rezeptId_fkey FOREIGN KEY (rezeptId) REFERENCES Rezept(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE RezepteInBestellung ADD CONSTRAINT RezepteInBestellung_bestellungId_fkey FOREIGN KEY (bestellungId) REFERENCES Bestellung(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE ZutatenInRezept ADD CONSTRAINT ZutatenInRezept_zutatId_fkey FOREIGN KEY (zutatId) REFERENCES Zutat(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE ZutatenInRezept ADD CONSTRAINT ZutatenInRezept_rezeptId_fkey FOREIGN KEY (rezeptId) REFERENCES Rezept(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Lieferant ADD CONSTRAINT Lieferant_adresseId_fkey FOREIGN KEY (adresseId) REFERENCES Adresse(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE ErnaehrungskategorieToRezept ADD CONSTRAINT _ErnaehrungskategorieToRezept_A_fkey FOREIGN KEY (ernaehrungskategorieId) REFERENCES Ernaehrungskategorie(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ErnaehrungskategorieToRezept ADD CONSTRAINT _ErnaehrungskategorieToRezept_B_fkey FOREIGN KEY (rezeptId) REFERENCES Rezept(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE AllergeneToRezept ADD CONSTRAINT _AllergeneToRezept_A_fkey FOREIGN KEY (allergeneId) REFERENCES Allergene(id) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE AllergeneToRezept ADD CONSTRAINT _AllergeneToRezept_B_fkey FOREIGN KEY (rezeptId) REFERENCES Rezept(id) ON DELETE CASCADE ON UPDATE CASCADE;
