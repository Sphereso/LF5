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
