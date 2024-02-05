--1. **Auswahl aller Zutaten eines Rezeptes nach Rezeptname:**

SELECT rezept.bezeichnung, zutat.bezeichnung FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE rezept.bezeichnung = 'Kartoffelsuppe'

--2. **Auswahl aller Rezepte einer bestimmten Ernährungskategorie:**

SELECT rezept.bezeichnung, ernaehrungskategorie.bezeichnung FROM rezept
LEFT JOIN ernaehrungskategorietorezept
ON rezept.id = ernaehrungskategorietorezept.rezeptid
LEFT JOIN ernaehrungskategorie
ON ernaehrungskategorietorezept.ernaehrungskategorieid = ernaehrungskategorie.id
WHERE ernaehrungskategorie.bezeichnung = 'Vegetarisch'

--3. **Auswahl aller Rezepte, die eine gewisse Zutat enthalten:**

SELECT DISTINCT rezept.bezeichnung, zutat.bezeichnung FROM Rezept
RIGHT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
RIGHT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE zutat.bezeichnung = 'Karotte'
--Not really tested since there's no ingredient used twice

--4. **Berechnung der durchschnittlichen Nährwerte aller Bestellungen eines Kunden:**

SELECT AVG(zutat.fett), AVG(zutat.protein), AVG(zutat.kalorien), AVG(zutat.kohlenhydrate) FROM bestellung
JOIN rezepteinbestellung
ON bestellung.id = rezepteinbestellung.bestellungid
JOIN rezept
ON rezepteinbestellung.rezeptid = rezept.id
JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE bestellung.kundeid = '8b5563a8-7b2b-466a-be1d-817c00afaa9f'
--no clue if this works, have to test if avg is right and shorten the values for the tables

--5. **Auswahl aller Zutaten, die bisher keinem Rezept zugeordnet sind:**

SELECT zutat.bezeichnung FROM rezept
FULL JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
FULL JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE zutat.id IS NOT NULL AND rezept.id IS NULL

--6. **Auswahl aller Rezepte, die eine bestimmte Kalorienmenge nicht überschreiten:**

SELECT DISTINCT rezept.id, rezept.bezeichnung FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
GROUP BY rezept.id, rezept.bezeichnung
HAVING SUM(zutat.kalorien) < 4000

--7. **Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten:**

SELECT rezept.bezeichnung, count(zutat.bezeichnung) FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
GROUP BY rezept.bezeichnung
HAVING count(zutat.id) < 7

--8. **Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten und eine bestimmte Ernährungskategorie erfüllen:**

SELECT rezept.bezeichnung FROM rezept
--Join zutat
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
--Join ernaehrungskategorie
LEFT JOIN ernaehrungskategorieToRezept
ON rezept.id = ernaehrungskategorieToRezept.rezeptId
LEFT JOIN ernaehrungskategorie
ON ernaehrungskategorieToRezept.ernaehrungskategorieId = ernaehrungskategorie.id 
WHERE ernaehrungskategorie.bezeichnung = 'Vegetarisch'
GROUP BY rezept.bezeichnung
HAVING count(zutat.id) < 7

--9. **DSGVO auskunft über den Kunden:**

SELECT * FROM kunde
WHERE kunde.id = 'e163a19b-30ad-4654-81b1-7111e6ed0c44'

--10. Lieferant auskunft für die Stadt:

SELECT lieferant.name, lieferant.mail, adresse.strasse, adresse.stadt, adresse.plz FROM lieferant
JOIN adresse ON lieferant.adresseid = adresse.id
WHERE adresse.stadt = 'Jork'

--10b. stored procedure:

CREATE OR REPLACE PROCEDURE get_addresses()
LANGUAGE plpgsql
AS $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN SELECT lieferant.name, lieferant.mail, adresse.strasse, adresse.stadt, adresse.plz 
               FROM lieferant JOIN adresse ON lieferant.adresseid = adresse.id WHERE adresse.stadt = 'Jork' LOOP
        RAISE NOTICE 'Name: %, Mail: %, Street: %, City: %, Zip: %', rec.name, rec.mail, rec.strasse, rec.stadt, rec.plz;
    END LOOP;
END
$$;
