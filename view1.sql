CREATE VIEW WidokStatystykiBadan AS
SELECT lekarz_id, rodzaj_badania, COUNT(*) AS ilo��_bada�
FROM Badania
GROUP BY lekarz_id, rodzaj_badania;