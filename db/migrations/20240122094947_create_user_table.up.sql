
CREATE TABLE "Kunde" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Kunde_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Bestellung" (
    "id" SERIAL NOT NULL,
    "kundeId" INTEGER NOT NULL,

    CONSTRAINT "Bestellung_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Rezept" (
    "id" SERIAL NOT NULL,
    "bezeichnung" TEXT NOT NULL,
    "beschreibung" TEXT NOT NULL,

    CONSTRAINT "Rezept_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Ernaehrungskategorie" (
    "id" SERIAL NOT NULL,
    "bezeichnung" TEXT NOT NULL,

    CONSTRAINT "Ernaehrungskategorie_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Allergene" (
    "id" SERIAL NOT NULL,
    "bezeichnung" TEXT NOT NULL,

    CONSTRAINT "Allergene_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Zutat" (
    "id" SERIAL NOT NULL,
    "lieferantId" INTEGER NOT NULL,

    CONSTRAINT "Zutat_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "ZutatenInBestellung" (
    "zutatId" INTEGER NOT NULL,
    "bestellungId" INTEGER NOT NULL,
    "menge" INTEGER NOT NULL,

    CONSTRAINT "ZutatenInBestellung_pkey" PRIMARY KEY ("zutatId","bestellungId")
);

CREATE TABLE "ZutatenInRezept" (
    "zutatId" INTEGER NOT NULL,
    "rezeptId" INTEGER NOT NULL,
    "menge" INTEGER NOT NULL,

    CONSTRAINT "ZutatenInRezept_pkey" PRIMARY KEY ("zutatId","rezeptId")
);

CREATE TABLE "Lieferant" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Lieferant_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "_ErnaehrungskategorieToRezept" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

CREATE TABLE "_AllergeneToRezept" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

CREATE UNIQUE INDEX "_ErnaehrungskategorieToRezept_AB_unique" ON "_ErnaehrungskategorieToRezept"("A", "B");

CREATE INDEX "_ErnaehrungskategorieToRezept_B_index" ON "_ErnaehrungskategorieToRezept"("B");

CREATE UNIQUE INDEX "_AllergeneToRezept_AB_unique" ON "_AllergeneToRezept"("A", "B");

CREATE INDEX "_AllergeneToRezept_B_index" ON "_AllergeneToRezept"("B");

ALTER TABLE "Bestellung" ADD CONSTRAINT "Bestellung_kundeId_fkey" FOREIGN KEY ("kundeId") REFERENCES "Kunde"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "Zutat" ADD CONSTRAINT "Zutat_lieferantId_fkey" FOREIGN KEY ("lieferantId") REFERENCES "Lieferant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "ZutatenInBestellung" ADD CONSTRAINT "ZutatenInBestellung_zutatId_fkey" FOREIGN KEY ("zutatId") REFERENCES "Zutat"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "ZutatenInBestellung" ADD CONSTRAINT "ZutatenInBestellung_bestellungId_fkey" FOREIGN KEY ("bestellungId") REFERENCES "Bestellung"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "ZutatenInRezept" ADD CONSTRAINT "ZutatenInRezept_zutatId_fkey" FOREIGN KEY ("zutatId") REFERENCES "Zutat"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "ZutatenInRezept" ADD CONSTRAINT "ZutatenInRezept_rezeptId_fkey" FOREIGN KEY ("rezeptId") REFERENCES "Rezept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "_ErnaehrungskategorieToRezept" ADD CONSTRAINT "_ErnaehrungskategorieToRezept_A_fkey" FOREIGN KEY ("A") REFERENCES "Ernaehrungskategorie"("id") ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "_ErnaehrungskategorieToRezept" ADD CONSTRAINT "_ErnaehrungskategorieToRezept_B_fkey" FOREIGN KEY ("B") REFERENCES "Rezept"("id") ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "_AllergeneToRezept" ADD CONSTRAINT "_AllergeneToRezept_A_fkey" FOREIGN KEY ("A") REFERENCES "Allergene"("id") ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "_AllergeneToRezept" ADD CONSTRAINT "_AllergeneToRezept_B_fkey" FOREIGN KEY ("B") REFERENCES "Rezept"("id") ON DELETE CASCADE ON UPDATE CASCADE;
