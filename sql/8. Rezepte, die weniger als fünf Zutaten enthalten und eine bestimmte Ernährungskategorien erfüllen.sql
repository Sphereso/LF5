--8. Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten und eine bestimmte Ernährungskategorie erfüllen

SELECT rezept.bezeichnung FROM rezept
LEFT JOIN zutateninrezept
ON rezept.id = zutateninrezept.rezeptid
LEFT JOIN zutat
ON zutateninrezept.zutatid = zutat.id
LEFT JOIN ernaehrungskategorieToRezept
ON rezept.id = ernaehrungskategorieToRezept.rezeptId
LEFT JOIN ernaehrungskategorie
ON ernaehrungskategorieToRezept.ernaehrungskategorieId = ernaehrungskategorie.id 
WHERE ernaehrungskategorie.bezeichnung = 'Vegetarisch'
GROUP BY rezept.bezeichnung
HAVING count(zutat.id) < 7
