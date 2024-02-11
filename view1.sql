CREATE VIEW WidokStatystykiBadan AS
SELECT lekarz_id, rodzaj_badania, COUNT(*) AS iloœæ_badañ
FROM Badania
GROUP BY lekarz_id, rodzaj_badania;