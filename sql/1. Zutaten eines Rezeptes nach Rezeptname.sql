--1. Auswahl aller Zutaten eines Rezeptes nach Rezeptname

SELECT rezept.bezeichnung, zutat.bezeichnung FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
WHERE rezept.bezeichnung = 'Kartoffelsuppe'
