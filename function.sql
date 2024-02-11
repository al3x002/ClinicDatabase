
CREATE FUNCTION LiczbaWizytLekarza(lekarzId INT)
RETURNS INT
BEGIN
    DECLARE liczbaWizyt INT;
    
    SELECT COUNT(*)
    INTO liczbaWizyt
    FROM Wizyty
    WHERE lekarz_id = lekarzId;
    
    RETURN liczbaWizyt;
END;
