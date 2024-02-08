CREATE PROCEDURE get_lieferant(p_stadt VARCHAR)
LANGUAGE plpgsql
AS $$
DECLARE
    rec RECORD;
BEGIN
    FOR rec IN SELECT lieferant.name, lieferant.mail, adresse.strasse, adresse.stadt, adresse.plz 
               FROM lieferant JOIN adresse ON lieferant.adresseid = adresse.id WHERE adresse.stadt = p_stadt LOOP
        RAISE NOTICE 'Name: %, Mail: %, Street: %, City: %, Zip: %', rec.name, rec.mail, rec.strasse, rec.stadt, rec.plz;
    END LOOP;
END
$$;
