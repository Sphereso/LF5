CREATE PROCEDURE delete_user(user_id UUID)
LANGUAGE plpgsql
AS $$
BEGIN

    DELETE FROM rezepteinbestellung
    WHERE rezepteinbestellung.bestellungId IN (
        SELECT id
        FROM bestellung
        WHERE bestellung.kundeId = user_id
    );

    DELETE FROM bestellung
    WHERE bestellung.kundeId = user_id;
    
    DELETE FROM adresse
    WHERE adresse.id IN (
        SELECT id
        FROM kunde
        WHERE kunde.id = user_id
    );
     
    DELETE FROM kunde
    WHERE kunde.id = user_id;
    
    RAISE NOTICE 'User data deleted successfully.';
END
$$;
