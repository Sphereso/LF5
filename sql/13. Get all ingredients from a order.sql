SELECT zutat.*, zutatinbestellung.menge FROM bestellung
JOIN zutatinbestellung ON bestellung.id = zutatinbestellung.bestellungid
JOIN zutat ON zutatinbestellung.zutatid = zutat.id

WHERE bestellung.id = '7ecb68d0-5e42-4e82-8421-7ef4b723365d'

UNION

SELECT zutat.*, rezepteinbestellung.menge * zutateninrezept.menge AS menge FROM bestellung
JOIN rezepteinbestellung ON bestellung.id = rezepteinbestellung.bestellungid
JOIN rezept ON rezepteinbestellung.rezeptid = rezept.id
JOIN zutateninrezept ON rezept.id = zutateninrezept.rezeptid
JOIN zutat ON zutateninrezept.zutatid = zutat.id

WHERE bestellung.id = '7ecb68d0-5e42-4e82-8421-7ef4b723365d'
