
CREATE VIEW WidokLekarzePacjenci AS
SELECT L.lekarz_id, L.imiê AS lekarz_imiê, L.nazwisko AS lekarz_nazwisko,
       P.pacjent_id, P.imiê AS pacjent_imiê, P.nazwisko AS pacjent_nazwisko
FROM Lekarze L
JOIN Wizyty W ON L.lekarz_id = W.lekarz_id
JOIN Pacjenci P ON W.pacjent_id = P.pacjent_id;



