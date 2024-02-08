--9. DSGVO auskunft über den Kunden:
SELECT * FROM kunde
FULL JOIN adresse ON kunde.adresseid = adresse.id
FULL JOIN bestellung ON kunde.id = bestellung.kundeid
WHERE kunde.id = 'e163a19b-30ad-4654-81b1-7111e6ed0c44'
