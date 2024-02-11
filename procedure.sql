
CREATE PROCEDURE AktualizujDiagnozeWizyty(IN wizytaId INT, IN nowaDiagnoza VARCHAR(255))
BEGIN
    -- Sprawd� czy istnieje wizyta o podanym identyfikatorze
    IF EXISTS (SELECT * FROM Wizyty WHERE wizyta_id = wizytaId) THEN
        -- Aktualizuj diagnoz� dla podanej wizyty
        UPDATE Wizyty
        SET diagnoza = nowaDiagnoza
        WHERE wizyta_id = wizytaId;
        SELECT 'Diagnoza zosta�a pomy�lnie zaktualizowana.';
    ELSE
        SELECT 'Wizyta o podanym identyfikatorze nie istnieje.';
    END IF;
END;
