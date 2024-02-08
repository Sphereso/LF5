--6. **Auswahl aller Rezepte, die eine bestimmte Kalorienmenge nicht überschreiten:**

SELECT DISTINCT rezept.id, rezept.bezeichnung FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
GROUP BY rezept.id, rezept.bezeichnung
HAVING SUM(zutat.kalorien) < 4000
