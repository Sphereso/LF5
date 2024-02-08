--5. Auswahl aller Zutaten, die bisher keinem Rezept zugeordnet sind

SELECT zutat.bezeichnung FROM rezept
FULL JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
FULL JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE zutat.id IS NOT NULL AND rezept.id IS NULL
