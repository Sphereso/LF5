--2. **Auswahl aller Rezepte einer bestimmten Ernährungskategorie:**

SELECT rezept.bezeichnung, ernaehrungskategorie.bezeichnung FROM rezept
LEFT JOIN ernaehrungskategorietorezept
ON rezept.id = ernaehrungskategorietorezept.rezeptid
LEFT JOIN ernaehrungskategorie
ON ernaehrungskategorietorezept.ernaehrungskategorieid = ernaehrungskategorie.id
WHERE ernaehrungskategorie.bezeichnung = 'Vegetarisch'