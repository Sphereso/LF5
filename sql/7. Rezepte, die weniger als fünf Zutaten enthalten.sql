--7. Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten

SELECT rezept.bezeichnung, count(zutat.bezeichnung) FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
GROUP BY rezept.bezeichnung
HAVING count(zutat.id) < 7
