--3. Auswahl aller Rezepte, die eine gewisse Zutat enthalten

SELECT DISTINCT rezept.bezeichnung, zutat.bezeichnung FROM Rezept
RIGHT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
RIGHT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE zutat.bezeichnung = 'Karotte'