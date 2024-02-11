
CREATE PROCEDURE AktualizujDiagnozeWizyty(IN wizytaId INT, IN nowaDiagnoza VARCHAR(255))
BEGIN
    -- SprawdŸ czy istnieje wizyta o podanym identyfikatorze
    IF EXISTS (SELECT * FROM Wizyty WHERE wizyta_id = wizytaId) THEN
        -- Aktualizuj diagnozê dla podanej wizyty
        UPDATE Wizyty
        SET diagnoza = nowaDiagnoza
        WHERE wizyta_id = wizytaId;
        SELECT 'Diagnoza zosta³a pomyœlnie zaktualizowana.';
    ELSE
        SELECT 'Wizyta o podanym identyfikatorze nie istnieje.';
    END IF;
END;
